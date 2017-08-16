//
//  MiAgendaVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/13/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class MiAgendaVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var items :[ProgramCat] = []
    var days : [[String:Any]] = []
    let userDefaults = UserDefaults.standard
    
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
        if let x = days[section]["cats"] as? [ProgramCat]{
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
        if let rows = days[indexPath.section]["cats"] as? [ProgramCat]{
            let row = rows[indexPath.row]
            if let titleLabel = cell.viewWithTag(1) as? UILabel{
                titleLabel.text = row.title
            }
            if let horario = cell.viewWithTag(2) as? UILabel{
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
            
            if let rows = days[indexPath.section]["cats"] as? [ProgramCat]{
                let row = rows[indexPath.row]
                if var storedCats = userDefaults.object(forKey: "my_schedule") as? [Int]{
                    if let idx = storedCats.index(of: row.id){
                        storedCats.remove(at: idx)
                        print(storedCats)
                        userDefaults.set(storedCats, forKey: "my_schedule")
                        userDefaults.synchronize()
                        tableView.beginUpdates()
                        tableView.deleteRows(at: [indexPath], with: .automatic)
                        if var rows = days[indexPath.section]["cats"] as? [ProgramCat]{
                            rows.remove(at: indexPath.row)
                            days[indexPath.section]["cats"] = rows
                        }
                        tableView.endUpdates()
//                        self.loadStoredItems()
//                        DispatchQueue.main.async{
//                            
//                            self.tableView.reloadData()
//                        }

                    }
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ProgramaCatDetailVC{
            
            if let indexPath = self.tableView.indexPathForSelectedRow{
                if let rows = days[indexPath.section]["cats"] as? [ProgramCat]{
                    vc.cat = rows[indexPath.row]
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
        
        if let schedule_ids = userDefaults.object(forKey: "my_schedule") as? [Int]{
            print(schedule_ids)
            for cat_idx in schedule_ids{
                if cat_idx == 0{
                    var cats = days[1]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[1]["cats"] = cats
                }
                else if cat_idx == 1{
                    var cats = days[2]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[2]["cats"] = cats
                    
                    cats = days[3]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[3]["cats"] = cats
                    
                    cats = days[4]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[4]["cats"] = cats
                    
                    cats = days[5]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[5]["cats"] = cats
                    
                    
                }
                else if  cat_idx == 2{
                    var cats = days[2]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[2]["cats"] = cats
                    
                    cats = days[3]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[3]["cats"] = cats
                    
                    cats = days[4]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[4]["cats"] = cats
 
                }
                else if  cat_idx == 3{
                    var cats = days[2]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[2]["cats"] = cats
                    
                    cats = days[3]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[3]["cats"] = cats
                    
                    cats = days[4]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[4]["cats"] = cats
                    
                    cats = days[5]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[5]["cats"] = cats
                }
                else if  cat_idx == 4{
                    var cats = days[0]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[0]["cats"] = cats
                }
                else if  cat_idx == 5{
                    var cats = days[1]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[1]["cats"] = cats
                    
                    cats = days[2]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[2]["cats"] = cats
                    
                    cats = days[3]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[3]["cats"] = cats
                    
                }
                else if  cat_idx == 6{
                    var cats = days[2]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[2]["cats"] = cats
                    
                    cats = days[3]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[3]["cats"] = cats
                    
                    cats = days[4]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[4]["cats"] = cats
                    
                    cats = days[5]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[5]["cats"] = cats
                    
                }
                else if  cat_idx == 7{
                    var cats = days[2]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[2]["cats"] = cats
                    
                    cats = days[3]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[3]["cats"] = cats
                    
                    cats = days[4]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx]) 
                    days[4]["cats"] = cats
                    
                    cats = days[5]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[5]["cats"] = cats
                    
                }
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

}
