//
//  ViewController.swift
//  flasog
//
//  Created by Jonathan Horta on 6/25/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit
//import SideMenu
class ViewController: UIViewController {


    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var ubicacionButton: UIButton!
    var days=0,hours=0, minutes=0, seconds=0
    var secondsLeft = 0
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        let menuLeftNavigationController = storyboard!.instantiateViewController(withIdentifier: "SideMenuNav") as! UISideMenuNavigationController
//        menuLeftNavigationController.leftSide = true
//        SideMenuManager.menuLeftNavigationController = menuLeftNavigationController

        
        let dateString = "04-11-2017 00:00:00"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        let date = dateFormatter.date(from: dateString)
        if let secondsLeft = date?.timeIntervalSinceNow{
            self.secondsLeft = Int(secondsLeft)
        }
        
        countdownTimer()
        
        //secondsLeft = roundf(date?.timeIntervalSinceNow)
        
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "logo_blanco"))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func countdownTimer() {
        print("count")
        print(timer)
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
            print(timer)
        }else { return }
       

    }
    @objc func updateCounter() {
        
        if(secondsLeft > 0 ) {
        secondsLeft = secondsLeft-1
        //        days = secondsLeft /
        days = secondsLeft / 86400;
        hours = (secondsLeft / 3600) % 24;
        minutes = (secondsLeft / 60) % 60;
        seconds = secondsLeft % 60;
            self.counterLabel.text = "\(String(format: "%02d",days)):\(String(format: "%02d",hours)):\(String(format: "%02d",minutes)):\(String(format: "%02d",seconds))"
       
            //[NSString stringWithFormat:@"%02d:%02d:%02d:%02d",days, hours, minutes, seconds];
        // NSLog(@"%@ SECONDS",self.myCounterLabel.text);
        } else {
        secondsLeft = 0;
        }
    }
    @IBAction func ubicacionAction(_ sender: UIButton) {
        let url = URL(string: "https://www.google.com.mx/maps/place/CANCUN+ICC/@21.1385675,-86.7505158,19.2z/data=!4m5!3m4!1s0x8f4c2c09dc820c41:0x2f257685e799c209!8m2!3d21.1386758!4d-86.7503051?hl=es-419")!
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    
    @IBAction func ProfesoresButton(_ sender: UIButton) {
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "TTT")
        self.present(vc, animated: false, completion: nil)
    }
    

}

