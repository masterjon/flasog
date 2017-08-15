//
//  PatrocinadoresVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/3/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class PatrocinadoresVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let items = [["image":"1",
                  "title":"MEDIX",
                  "description":"Grupo Elite",
                  "link":"https://www.medix.com.mx/"],
                ["image":"2",
                  "title":"BAYER",
                  "description":"Grupo Elite",
                  "link":"http://www.bayer.mx/"],
                ["image":"3",
                 "title":"SIEGFRIED RHEIN",
                 "description":"Grupo Elite",
                 "link":"http://www.siegfried.com.mx/"],
                ["image":"4",
                 "title":"ASOFARMA",
                 "description":"Grupo Elite",
                 "link":"http://www.asofarma.com.mx/"],
                ["image":"5",
                 "title":"IFA",
                 "description":"Grupo Elite",
                 "link":"http://www.ifaonline.com.mx/"],
                ["image":"6",
                 "title":"LIOMONT",
                 "description":"Grupo Elite",
                 "link":"http://liomont.com/"],
                ["image":"7",
                 "title":"MSD",
                 "description":"Grupo Elite",
                 "link":"http://www.corporativo.msd.com.mx/"],
                ["image":"8",
                 "title":"SMH",
                 "description":"Grupo Elite",
                 "link":"http://www.smh.com.mx/"],
                ["image":"9",
                 "title":"TAKEDA",
                 "description":"Grupo Elite",
                 "link":"http://www.takedamexico.com/"],
                 ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if let image = cell.viewWithTag(4) as? UIImageView{
            image.image = UIImage(named: items[indexPath.row]["image"]!)
        }
        if let titl = cell.viewWithTag(1) as? UILabel{
            titl.text = items[indexPath.row]["title"]
        }
        if let desc = cell.viewWithTag(2) as? UILabel{
            desc.text = items[indexPath.row]["description"]
        }
        if let link = cell.viewWithTag(3) as? UILabel{
            link.text = items[indexPath.row]["link"]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? PatrocinadoresDetailVC{
            let index = self.tableView.indexPathForSelectedRow
            if let row = index?.row{
                vc.url = items[row]["link"]!
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
