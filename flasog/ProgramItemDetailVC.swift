//
//  ProgramItemDetailVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/4/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProgramItemDetailVC: UIViewController {
    let userDefaults = UserDefaults.standard
    var programItem:ProgramItem!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var roomLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var scheduleLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = programItem.title
        self.descriptionTextView.text = programItem.desc

        self.roomLabel.text = "Salón: \(programItem.room)"
        self.durationLabel.text = "Duración: \(programItem.duration) mins"
        self.scheduleLabel.text = "Horario: \(programItem.schedule)"
        self.daysLabel.text = "Días: \(programItem.days)"
        // Do any additional setup after loading the view.
    }

    @IBAction func addToSchedule(_ sender: UIButton) {
        print("Agregado")
        print(programItem.catId)
        if var my_schedule_array = userDefaults.object(forKey: "my_schedule") as? [Int]{
            if !my_schedule_array.contains(programItem.catId){
                my_schedule_array.append(programItem.catId)
                userDefaults.set(my_schedule_array, forKey: "my_schedule")
            }
            
        }
        else{
            userDefaults.set([programItem.catId], forKey: "my_schedule")
        }
        userDefaults.synchronize()
        let alert2 = UIAlertController(title:"Elemento agregado", message: "", preferredStyle: .alert)
        alert2.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert2, animated: true, completion: nil)
        
        if let t = userDefaults.object(forKey: "my_schedule") as? [Int]{
            print(t)
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
