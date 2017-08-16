//
//  ProgramaFullVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/5/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProgramaFullVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
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
