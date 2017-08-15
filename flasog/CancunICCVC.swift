//
//  CancunICCVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/2/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class CancunICCVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    class func create(storyboardId:String) -> CancunICCVC {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! CancunICCVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMap(_ sender: UIButton) {
        let url = URL(string: "https://www.google.com.mx/maps/place/CANCUN+ICC/@21.1385675,-86.7505158,19.2z/data=!4m5!3m4!1s0x8f4c2c09dc820c41:0x2f257685e799c209!8m2!3d21.1386758!4d-86.7503051?hl=es-419")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
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
