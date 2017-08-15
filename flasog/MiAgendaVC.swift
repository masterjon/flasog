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
        
        let titles = [
            "Cursos Precongreso", // 0
            "Cursos Transcongreso", // 1
            "Conferencias Magistrales", // 2
            "Conferencias Especiales", // 3
            "Encuentro Latinoamericano de residentes G.O.", // 4
            "Simposios Especiales", // 5
            "Simposios Simultaneos", // 6
            "Foros de discusión" // 7
        ]
        
        for (index,item) in titles.enumerated() {
            let cat = ProgramCat()
            cat.id = index
            cat.title = item
            cat.image = "pg\(index+1)"
            self.items.append(cat)
        }
        items[0].schedule = "7:00 – 14:00 hrs"
        items[1].schedule = "7:00 – 9:00 hrs."
        items[2].schedule = "13:00 – 13:45 hrs."
        items[3].schedule = "11:15 – 12:30 hrs."
        items[4].schedule = "13:00 - 18:30 hrs"
        items[5].schedule = "14:00 – 15:00 hrs."
        items[6].schedule = "9:30 – 11:00 hrs."
        items[7].schedule = "11:15 – 12:30 hrs."
        
        
        //      Cursos Precongreso
        
        let item0_1 = ProgramItem()
        item0_1.title = "Fortaleciendo competencias en manejo y capacitación ante la hemorragia obstétrica (Teórico-práctico)"
        item0_1.room = "2"
        item0_1.duration = 360
        item0_1.schedule = "8:00 – 14:00 hrs."
        item0_1.days = "5 de noviembre 2017"
        
        let item0_2 = ProgramItem()
        item0_2.title = "Diagnóstico precoz del cáncer ginecológico."
        
        items[0].items.append(item0_1)
        items[0].items.append(item0_2)
        
        
        let cat_expo = ProgramCat()
        cat_expo.title = "Receso Exposición Científico-Comercial"
        cat_expo.schedule = "9:00 – 9:30 hrs."
        
        let cat_receso = ProgramCat()
        cat_receso.title = "Receso"
        cat_receso.schedule = "12:30 – 13:00 hrs."
        
        let cat_clausura = ProgramCat()
        cat_clausura.title = "Clausura"
        cat_clausura.schedule = "12:30 – 13:00 hrs."
        
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
        if let schedule_ids = userDefaults.object(forKey: "my_schedule") as? [Int]{
            print(schedule_ids)
            for cat_idx in schedule_ids{
                if cat_idx == 0{
                    var cats = days[1]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[1]["cats"] = cats
                }
                if cat_idx == 1{
                    var cats = days[2]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[2]["cats"] = cats
                    
                    cats = days[3]["cats"] as! [ProgramCat]
                    cats.append(items[cat_idx])
                    days[3]["cats"] = cats
                    
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
