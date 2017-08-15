//
//  ProgramaCatDetailVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/4/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProgramaCatDetailVC: UIViewController, UITableViewDataSource {

    var cat:ProgramCat!
    let userDefaults = UserDefaults.standard

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = cat.title
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cat.items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if let titleLbl = cell.viewWithTag(1) as? UILabel{
            titleLbl.text = "\(indexPath.row + 1) - \(cat.items[indexPath.row].title)"
            
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ProgramItemDetailVC
        if let indexPath = tableView.indexPathForSelectedRow{
            vc.programItem = cat.items[indexPath.row]
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
