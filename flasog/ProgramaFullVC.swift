//
//  ProgramaFullVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/5/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProgramaFullVC: UIViewController, UITableViewDataSource {
    var items :[ProgramCat] = []
    var days : [[String:Any]] = []
    
    class func create(storyboardId:String) -> ProgramaFullVC {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! ProgramaFullVC
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadItems()
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
        item0_1.catId = 0
        item0_1.title = "Fortaleciendo competencias en manejo y capacitación ante la hemorragia obstétrica (Teórico-práctico)"
        item0_1.room = "2"
        item0_1.duration = 360
        item0_1.schedule = "8:00 – 14:00 hrs."
        item0_1.days = "5 de noviembre 2017"
        
        let item0_2 = ProgramItem()
        item0_2.catId = 0
        item0_2.title = "Diagnóstico precoz del cáncer ginecológico."
        
        let item0_3 = ProgramItem()
        item0_3.catId = 0
        item0_3.title = "Menopausia “Una visión holística e integral”."
        
        let item0_4 = ProgramItem()
        item0_4.catId = 0
        item0_4.title = "Complicaciones médicas durante el embarazo."
        
        let item0_5 = ProgramItem()
        item0_5.catId = 0
        item0_5.title = "Curso ACOG: Controversias en la práctica."
        
        let item0_6 = ProgramItem()
        item0_6.catId = 0
        item0_6.title = "Mortalidad y Morbilidad materna."
        
        let item0_7 = ProgramItem()
        item0_7.catId = 0
        item0_7.title = "Temas selectos de Medicina reproductiva. Evidencia actual."
        
        let item0_8 = ProgramItem()
        item0_8.catId = 0
        item0_8.title = "Derechos sexuales y reproductivos en Latinoamérica."
        
        let item0_9 = ProgramItem()
        item0_9.catId = 0
        item0_9.title = "Afecciones Ginecológicas comunes en la Adolescencia y su Impacto sobre la Salud Reproductiva."
        
        let item0_10 = ProgramItem()
        item0_10.catId = 0
        item0_10.title = "Parto Prematuro: Diagnóstico, Prevención y Manejo."
        
        items[0].items.append(item0_1)
        items[0].items.append(item0_2)
        items[0].items.append(item0_3)
        items[0].items.append(item0_4)
        items[0].items.append(item0_5)
        items[0].items.append(item0_6)
        items[0].items.append(item0_7)
        items[0].items.append(item0_8)
        items[0].items.append(item0_9)
        items[0].items.append(item0_10)
        
        
        
        
        items = fillDesc(items: items)
        
        /* Empty Cats */
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
                "cats":[items[4]]
            ],
            [
                "title":"DOMINGO 5 DE NOVIEMBRE",
                "date":"5/11/17",
                "cats":[items[0],items[5]]
            ],
            [
                "title":"LUNES 6 DE NOVIEMBRE",
                "date":"6/11/17",
                "cats":[items[1],cat_expo,items[6],items[7],items[3],cat_receso,items[2],items[5]]
            ],
            [
                "title":"MARTES 7 DE NOVIEMBRE",
                "date":"7/11/17",
                "cats":[items[1],cat_expo,items[6],items[7],items[3],cat_receso,items[2],items[5]]
            ],
            [
                "title":"MIÉRCOLES 8 DE NOVIEMBRE",
                "date":"8/11/17",
                "cats":[items[1],cat_expo,items[6],items[7],items[3],cat_receso,items[2],items[5]]
            ],
            [
                "title":"JUEVES 9 DE NOVIEMBRE",
                "date":"9/11/17",
                "cats":[items[1],cat_expo,items[6],items[7],items[3],cat_receso,cat_clausura]
            ]
        ]
        
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
