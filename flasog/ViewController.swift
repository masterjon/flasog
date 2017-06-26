//
//  ViewController.swift
//  flasog
//
//  Created by Jonathan Horta on 6/25/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var counterLabel: UILabel!
    
    var days=0,hours=0, minutes=0, seconds=0
    var secondsLeft = 0
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateString = "04-11-2017 08:00:00"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
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
        guard timer == nil else { return }
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.updateCounter), userInfo: nil, repeats: true)

    }
    @objc func updateCounter() {
        print("timeer")
        if(secondsLeft > 0 ) {
        secondsLeft = secondsLeft-1
        //        days = secondsLeft /
        days = secondsLeft / 86400;
        hours = (secondsLeft / 3600) % 24;
        minutes = (secondsLeft / 60) % 60;
        seconds = secondsLeft % 60;
        self.counterLabel.text = "\(days):\(hours)"
            //[NSString stringWithFormat:@"%02d:%02d:%02d:%02d",days, hours, minutes, seconds];
        // NSLog(@"%@ SECONDS",self.myCounterLabel.text);
        } else {
        secondsLeft = 0;
        }
    }

}

