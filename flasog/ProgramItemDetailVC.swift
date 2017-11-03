//
//  ProgramItemDetailVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/4/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit
import UserNotifications

class ProgramItemDetailVC: UIViewController {
    let userDefaults = UserDefaults.standard
    var programItem:ProgramItem!
    var programCat:String!
    var hideBtn:Bool?
    let center = UNUserNotificationCenter.current()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var roomLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var scheduleLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet var addToBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let isHiden = hideBtn{
                addToBtn.isHidden = isHiden
        }
        self.titleLabel.text = programItem.title
        self.descriptionTextView.text = programItem.desc

        self.roomLabel.text = "Salón: \(programItem.room)"
        self.durationLabel.text = "Duración: \(programItem.duration) mins."
        self.scheduleLabel.text = "Horario: \(programItem.schedule)"
        self.daysLabel.text = "Días: \(programItem.days)"
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func addToSchedule(_ sender: UIButton) {
        print("Agregado")
        
        
        let content = UNMutableNotificationContent()
        content.title = "Comienza pronto: \(programCat!)"
        content.body = programItem.title
        content.sound = UNNotificationSound.default()
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5,
//                                                        repeats: false)

        
        //let date = Date(timeIntervalSinceNow: 0)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        var date = dateFormatter.date(from: "22-10-2017 18:45:00")
        if let dd = dateFormatter.date(from: programItem.dateString){
            print(dd)
             date = dd.addingTimeInterval(15.0 * 60.0 * -1)
        }
        
        
        let triggerDate = Calendar.current.dateComponents([.year,.month,.day,.hour,.minute,.second,], from: date!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate,
                                                    repeats: false)
        
        let identifier = "\(programItem.id)\(programItem.title)"
        print("Add Notif:"+identifier)
        let request = UNNotificationRequest(identifier: identifier,
                                            content: content, trigger: trigger)
        
        
        
        print(programItem.catId)
        let alert2 = UIAlertController(title:"Elemento agregado", message: "", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        let alert3 = UIAlertController(title:"Este elemento ya esta en tu agenda", message: "", preferredStyle: .alert)
        alert3.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        let alert4 = UIAlertController(title:"Recuerda", message: "Sólo puedes agregar 1 precongreso y 1 transcongreso a tu agenda. Para poder agregar este elemento necesitas primero quitar de tu agenda el precongreso/transcongreso existente", preferredStyle: .alert)
        alert4.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        if var my_schedule_array = userDefaults.object(forKey: "my_schedule") as? [[Int]]{
            //if !my_schedule_array.contains(programItem.catId){
            var exists = false
            var tooManyCourses = false
            var transCounter = 0
            var preCounter = 0
            
            for item in my_schedule_array{
                if item[0] == programItem.catId && item[1] == programItem.id{
                   exists = true
                }
                if item[0] == 0{
                    preCounter+=1
                }
                if item[0] == 1{
                    transCounter+=1
                }
            }
            if (programItem.catId == 0 && preCounter > 0) || (programItem.catId == 1 && transCounter > 0){
                tooManyCourses = true
            }
            if !exists && !tooManyCourses {
              
                center.add(request, withCompletionHandler: { (error) in
                    if let error = error {
                        print("Something went wrong\(error)")
                    }
                })
              my_schedule_array.append([programItem.catId,programItem.id,programItem.dayId])
                userDefaults.set(my_schedule_array, forKey: "my_schedule")
                
                self.present(alert2, animated: true, completion: nil)
            }
            else if tooManyCourses { 
                self.present(alert4, animated: true, completion: nil)
            }
            else if exists{
                self.present(alert3, animated: true, completion: nil)
            }
            
            
            
            //}
            
        }
        else{
            userDefaults.set([[programItem.catId,programItem.id,programItem.dayId]], forKey: "my_schedule")
            self.present(alert2, animated: true, completion: nil)
        }
        userDefaults.synchronize()
        
        
        
        if let t = userDefaults.object(forKey: "my_schedule") as? [[Int]]{
            print(t)
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: "Programa Detalle")
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
