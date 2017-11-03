//
//  ProfesoresDetailVC.swift
//  flasog
//
//  Created by Jonathan Horta on 7/22/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProfesoresDetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var specialLabel: UILabel!
    
    @IBOutlet weak var descTextView: UITextView!
    
    var imageName : String?
    var name : String?
    var special : String?
    var desc : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        imageView.image = UIImage(named: imageName!)
        specialLabel.text = special
        descTextView.text = desc
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: "Profesores Detalle")
        tracker?.send(GAIDictionaryBuilder.createScreenView().build() as! [AnyHashable: Any])
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
