//
//  StaticTabViewController.swift
//  flasog
//
//  Created by Jonathan Horta on 7/16/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class StaticTabViewController: UIViewController {

    class func create(storyboardId:String) -> StaticTabViewController {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! StaticTabViewController
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
