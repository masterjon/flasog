//
//  ProgramaCatDetailVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/4/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit
extension Array {
    mutating func remove(at indexes: [Int]) {
        for index in indexes.sorted(by: >) {
            remove(at: index)
        }
    }
}

class ProgramaCatDetailVC: UIViewController, UITableViewDataSource {

    var cat:ProgramCat!
    var days : [[String:Any]] = []
    let userDefaults = UserDefaults.standard

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = cat.title
        loadItems()
        // Do any additional setup after loading the view.
    }
    
    func loadItems(){
        
        
        days = [
            [
                "title":"SÁBADO 4 DE NOVIEMBRE",
                "date":"4/11/17",
                "items":[]
            ],
            [
                "title":"DOMINGO 5 DE NOVIEMBRE",
                "date":"5/11/17",
                "items":[]
            ],
            [
                "title":"LUNES 6 DE NOVIEMBRE",
                "date":"6/11/17",
                "items":[]
            ],
            [
                "title":"MARTES 7 DE NOVIEMBRE",
                "date":"7/11/17",
                "items":[]
            ],
            [
                "title":"MIÉRCOLES 8 DE NOVIEMBRE",
                "date":"8/11/17",
                "items":[]
            ],
            [
                "title":"JUEVES 9 DE NOVIEMBRE",
                "date":"9/11/17",
                "items":[]
            ]
        ]
        for item in cat.items{
           var items = days[item.dayId]["items"] as! [ProgramItem]
            items.append(item)
           days[item.dayId]["items"] = items
        }
        var emptyItems : [Int] = []
        for (idx,day) in days.enumerated(){
            let items = day["items"] as! [ProgramItem]
            if items.isEmpty{
                emptyItems.append(idx)
            }
        }
        print(days)
        print(emptyItems)
        
        days.remove(at:emptyItems)
        
        
        
        
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return days.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let x = days[section]["items"] as? [ProgramItem]{
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
        if let titleLbl = cell.viewWithTag(1) as? UILabel{
            //titleLbl.text = "\(indexPath.row + 1) - \(cat.items[indexPath.row].title)"
            if let items = days[indexPath.section]["items"] as? [ProgramItem]{
                titleLbl.text = items[indexPath.row].title
            }
            
            
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ProgramItemDetailVC
        if let indexPath = tableView.indexPathForSelectedRow{
            if let items = days[indexPath.section]["items"] as? [ProgramItem]{
                vc.programItem = items[indexPath.row]
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
