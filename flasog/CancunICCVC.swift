//
//  CancunICCVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/2/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit
import ImageSlideshow
class CancunICCVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet var slideshow: ImageSlideshow!
    let localSource = [ImageSource(imageString: "1ICC")!,ImageSource(imageString: "2ICC")!,ImageSource(imageString: "3ICC")!,ImageSource(imageString: "4ICC")!]
                       
    class func create(storyboardId:String) -> CancunICCVC {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! CancunICCVC
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slideshow.slideshowInterval = 5.0
        slideshow.pageControlPosition = PageControlPosition.underScrollView
        slideshow.pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        slideshow.pageControl.pageIndicatorTintColor = UIColor.black
        slideshow.contentScaleMode = UIViewContentMode.scaleAspectFill
        
        // optional way to show activity indicator during image load (skipping the line will show no activity indicator)
        slideshow.activityIndicator = DefaultActivityIndicator()
        slideshow.currentPageChanged = { page in
            print("current page:", page)
        }
        
        // can be used with other sample sources as `afNetworkingSource`, `alamofireSource` or `sdWebImageSource` or `kingfisherSource`
        slideshow.setImageInputs(localSource)
        
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(StaticTabViewController.didTap))
        slideshow.addGestureRecognizer(recognizer)
    }
    
    @objc func didTap() {
        let fullScreenController = slideshow.presentFullScreenController(from: self)
        // set the activity indicator for full screen controller (skipping the line will show no activity indicator)
        fullScreenController.slideshow.activityIndicator = DefaultActivityIndicator(style: .white, color: nil)
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
