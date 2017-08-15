//
//  ComiteCollectionVC.swift
//  flasog
//
//  Created by Jonathan Horta on 7/18/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ComiteCollectionVC: UIViewController,UICollectionViewDataSource {
    
    var items :[[String:String]] = []
    var image = ""
    
    @IBOutlet weak var imageView: UIImageView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        if let labelView = cell.contentView.viewWithTag(2) as? UILabel{
            labelView.text = items[indexPath.row]["name"]
        }
        if let posView = cell.contentView.viewWithTag(3) as? UILabel{
            posView.text = items[indexPath.row]["pos"]
        }
        if let imageView = cell.contentView.viewWithTag(1) as? UIImageView{
            let name = items[indexPath.row]["image"]
            
            imageView.image = UIImage(named: name!)
        }
        
        return cell
    }
    

    
    class func create(image:String, items:[[String:String]]) -> ComiteCollectionVC {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let view =  mainStoryboard.instantiateViewController(withIdentifier: "ComitesCollection") as! ComiteCollectionVC
        view.items = items
        view.image = image
        return view
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: image)
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
