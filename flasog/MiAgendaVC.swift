//
//  MiAgendaVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/13/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit
import UserNotifications

extension String {
    /**
     Truncates the string to the specified length number of characters and appends an optional trailing string if longer.
     
     - Parameter length: A `String`.
     - Parameter trailing: A `String` that will be appended after the truncation.
     
     - Returns: A `String` object.
     */
    func truncate(length: Int, trailing: String = "…") -> String {
        if self.characters.count > length {
            return String(self.characters.prefix(length)) + trailing
        } else {
            return self
        }
    }
}
class MiAgendaVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var items :[ProgramCat] = []
    var days : [[String:Any]] = []
    let userDefaults = UserDefaults.standard
    let center = UNUserNotificationCenter.current()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadItems()
        loadStoredItems()
        
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return days.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let x = days[section]["cats"] as? [MyScheduleItem]{
            return x.count
        }
        return 0
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if let title = days[section]["title"] as? String{
            return title
        }
        return ""
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let title = view as? UITableViewHeaderFooterView{
            title.textLabel?.textColor =  ColorPallete.BlueColor
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        print(indexPath.section)
        if let rows = days[indexPath.section]["cats"] as? [MyScheduleItem]{
            
            let row = rows[indexPath.row]
            if let titleLabel = cell.viewWithTag(1) as? UILabel{
                titleLabel.text = row.title
            }
            if let subLabel = cell.viewWithTag(2) as? UILabel{
                subLabel.text = row.subtitle.truncate(length: 32)
            }
            if let horario = cell.viewWithTag(3) as? UILabel{
                horario.text = row.schedule
            }
            //            if let fechaFinLabel = cell.viewWithTag(3) as? UILabel{
            //
            //                fechaFinLabel.text = "13:45 hrs."
            //            }
            
        }
        
        
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        
        
        if editingStyle == .delete{
            print("delete")

            if var rows = days[indexPath.section]["cats"] as? [MyScheduleItem]{
                let row = rows[indexPath.row]
                if var storedCats = userDefaults.object(forKey: "my_schedule") as? [[Int]]{
                    print(storedCats)
                    print("CatId:\(row.catId), Id:\(row.id)")
                    let notifIdentifier = "\(row.id)\(row.subtitle)"
                    print("Delete Notif:"+notifIdentifier)
                    center.removePendingNotificationRequests(withIdentifiers: [notifIdentifier])
                    var deleteIndex: Int?
                    for (idx,item) in storedCats.enumerated(){
                        if item[0] == row.catId && item[1] == row.id{
                            deleteIndex = idx
                        }
                    }
                    if let i = deleteIndex{
                       storedCats.remove(at: i)
                        userDefaults.set(storedCats, forKey: "my_schedule")
                        userDefaults.synchronize()
                        tableView.beginUpdates()
                        var indexpaths : [IndexPath] = []
                        
                        tableView.deleteRows(at: [indexPath], with: .automatic)
                        rows.remove(at: indexPath.row)
                        days[indexPath.section]["cats"] = rows
//                        if row.catId == 1{
//                            var leftSections = [2,3,4,5]
//                            let indx = leftSections.index(of: indexPath.section)
//                            leftSections.remove(at: indx!)
//                            print("leftSections")
//                            print(leftSections)
//                            print(indx)
//                            for section in leftSections{
//                                var indexpath = indexPath
//                                indexpath.section = section
//                                indexpaths.append(indexpath)
//                            }
//                            print(index)
//                            tableView.deleteRows(at: indexpaths, with: .automatic)
//                            
//                        }
                        
                        tableView.endUpdates()

                    }
                    
                    
                    
                    
//                    if let idx = storedCats.index(of: row.id){
//                        storedCats.remove(at: idx)
//                        print(storedCats)
//                        userDefaults.set(storedCats, forKey: "my_schedule")
//                        userDefaults.synchronize()
//                        tableView.beginUpdates()
//                        tableView.deleteRows(at: [indexPath], with: .automatic)
//                        if var rows = days[indexPath.section]["cats"] as? [ProgramCat]{
//                            rows.remove(at: indexPath.row)
//                            days[indexPath.section]["cats"] = rows
//                        }
//                        tableView.endUpdates()
////                        self.loadStoredItems()
////                        DispatchQueue.main.async{
////
////                            self.tableView.reloadData()
////                        }
//
//                    }
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ProgramItemDetailVC{
            if let indexPath = self.tableView.indexPathForSelectedRow{
                print(days[indexPath.section]["cats"]!)
                
                
                if let rows = days[indexPath.section]["cats"] as? [MyScheduleItem]{
                    let catId = rows[indexPath.row].catId
                    let Id = rows[indexPath.row].id
                    vc.programItem = items[catId].items[Id]
                    vc.hideBtn = true
                }
            }
        }
    }
    
    
    func loadItems(){
        
        items = loadSchedule()
        
        days = [
            [
                "title":"SÁBADO 4 DE NOVIEMBRE",
                "date":"4/11/17",
                "cats":[]
            ],
            [
                "title":"DOMINGO 5 DE NOVIEMBRE",
                "date":"5/11/17",
                "cats":[]
            ],
            [
                "title":"LUNES 6 DE NOVIEMBRE",
                "date":"6/11/17",
                "cats":[]
            ],
            [
                "title":"MARTES 7 DE NOVIEMBRE",
                "date":"7/11/17",
                "cats":[]
            ],
            [
                "title":"MIÉRCOLES 8 DE NOVIEMBRE",
                "date":"8/11/17",
                "cats":[]
            ],
            [
                "title":"JUEVES 9 DE NOVIEMBRE",
                "date":"9/11/17",
                "cats":[]
            ]
        ]
        
        
        
    }
    func loadStoredItems(){
//        let titles = [
//            "Cursos Precongreso", // 0
//            "Cursos Transcongreso", // 1
//            "Conferencias Magistrales", // 2
//            "Conferencias Especiales", // 3
//            "Encuentro Latinoamericano de residentes G.O.", // 4
//            "Simposios Especiales", // 5
//            "Simposios Simultaneos", // 6
//            "Foros de discusión" // 7
//        ]
        
        if let schedule_items = userDefaults.object(forKey: "my_schedule") as? [[Int]]{
            print(schedule_items)
            
            for itm in schedule_items{
                    let day = items[itm[0]].items[itm[1]].dayId
                    let scheduleItem = MyScheduleItem()
                    scheduleItem.title = items[itm[0]].title
                    scheduleItem.subtitle = items[itm[0]].items[itm[1]].title
                    scheduleItem.schedule = items[itm[0]].items[itm[1]].schedule
                    scheduleItem.catId = itm[0]
                    scheduleItem.id = itm[1]
                
                
                
                    //Modificar agenda para agregar 1 elemento en multiples días (transcongreso)
                    //Los Transcongreso son los únicos que se agregan en más de 1 día. (6-9 nov)
                    if scheduleItem.catId == 1{
                        print("iff")
                        for i in 2...5{
                            
                            var cats = days[i]["cats"] as! [MyScheduleItem]
                            cats.append(scheduleItem)
                            days[i]["cats"] = cats
                            
                        }
                        
                    }
                    else{
                        var cats = days[day]["cats"] as! [MyScheduleItem]
                        cats.append(scheduleItem)
                        days[day]["cats"] = cats
                    }
                    //print(days[1]["cats"])
                
//                else if itm[0] == 1{
//                    var cats = days[2]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[2]["cats"] = cats
//
//                    cats = days[3]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[3]["cats"] = cats
//
//                    cats = days[4]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[4]["cats"] = cats
//
//                    cats = days[5]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[5]["cats"] = cats
//
//
//                }
//                else if  itm[0] == 2{
//                    var cats = days[2]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[2]["cats"] = cats
//
//                    cats = days[3]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[3]["cats"] = cats
//
//                    cats = days[4]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[4]["cats"] = cats
//
//                }
//                else if  itm[0] == 3{
//                    var cats = days[2]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[2]["cats"] = cats
//
//                    cats = days[3]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[3]["cats"] = cats
//
//                    cats = days[4]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[4]["cats"] = cats
//
//                    cats = days[5]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[5]["cats"] = cats
//                }
//                else if  itm[0] == 4{
//                    var cats = days[0]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[0]["cats"] = cats
//                }
//                else if  itm[0] == 5{
//                    var cats = days[1]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[1]["cats"] = cats
//
//                    cats = days[2]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[2]["cats"] = cats
//
//                    cats = days[3]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[3]["cats"] = cats
//
//                }
//                else if  itm[0] == 6{
//                    var cats = days[2]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[2]["cats"] = cats
//
//                    cats = days[3]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[3]["cats"] = cats
//
//                    cats = days[4]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[4]["cats"] = cats
//
//                    cats = days[5]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[5]["cats"] = cats
//
//                }
//                else if  itm[0] == 7{
//                    var cats = days[2]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[2]["cats"] = cats
//
//                    cats = days[3]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[3]["cats"] = cats
//
//                    cats = days[4]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[4]["cats"] = cats
//
//                    cats = days[5]["cats"] as! [ProgramCat]
//                    cats.append(items[cat_idx])
//                    days[5]["cats"] = cats
//
//                }
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func viewDidAppear(_ animated: Bool) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: "Mi Agenda")
        tracker?.send(GAIDictionaryBuilder.createScreenView().build() as! [AnyHashable: Any])
    }
}
