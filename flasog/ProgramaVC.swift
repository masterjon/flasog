//
//  ProgramaVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/4/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProgramaVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var items :[ProgramCat] = loadSchedule()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    class func create(storyboardId:String) -> ProgramaVC {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! ProgramaVC
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        if let img = cell.viewWithTag(1) as? UIImageView{
            img.image = UIImage(named: items[indexPath.row].image)
        }
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ProgramaCatDetailVC{
            
            if let indexPath = self.collectionView.indexPath(for: sender as! UICollectionViewCell){
                vc.cat = self.items[indexPath.row]
            }
            
            
        }
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let indexPath = self.collectionView.indexPath(for: sender as! UICollectionViewCell){
            if indexPath.row != 4{
                return true
            }
        }
        return false
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 4{
            performSegue(withIdentifier: "ShowTestSegue", sender: Any?)
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: "Programa")
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
