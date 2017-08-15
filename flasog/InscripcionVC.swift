//
//  InscripcionVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/14/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class InscripcionVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pagoButton(_ sender: UIButton) {
        if let url = URL(string: "http://congresoflasog2017.org.mx/index.php/inscripciones/inscripcion-con-tarjeta-de-credito"){
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @IBAction func depositoButton(_ sender: UIButton) {
        if let url = URL(string: "http://congresoflasog2017.org.mx/index.php/inscripciones/inscripcion-con-deposito-bancario"){
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
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
