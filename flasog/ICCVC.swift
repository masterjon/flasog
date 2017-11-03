//
//  ICCVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/3/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit
import Segmentio

class ICCVC: UIViewController {

    var segmentioStyle = SegmentioStyle.imageOverLabel
    var segmentioView: Segmentio!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentioViewRect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 80)
        
        segmentioView = Segmentio(frame: segmentioViewRect)
        segmentioView.backgroundColor = ColorPallete.CyanColor
        view.addSubview(segmentioView)
        self.setupSegmentioView()
        self.setupScrollView()
        // Do any additional setup after loading the view.
    }
    
    private func setupSegmentioView() {
        
        
        segmentioView.setup(
            content: segmentioContent(),
            style: segmentioStyle,
            options: segmentioOptions()
        )
        
        segmentioView.selectedSegmentioIndex = 0
        
        segmentioView.valueDidChange = { segmentio, segmentIndex in
            print("Selected item: ", segmentIndex)
            if let scrollViewWidth = self.scrollView?.frame.width {
                let contentOffsetX = scrollViewWidth * CGFloat(segmentIndex)
                self.scrollView?.setContentOffset(
                    CGPoint(x: contentOffsetX, y: 0),
                    animated: true
                )
                print("Selected item: ", segmentIndex)
                print(scrollViewWidth)
                print(contentOffsetX)
            }
        }
    }
    private func segmentioContent() -> [SegmentioItem] {
        
        return [
            SegmentioItem(title: "Cancun ICC", image: UIImage(named: "BotonCancunIccP12")),
            SegmentioItem(title: "Salones", image: UIImage(named: "BotonSalonesP12")),
            SegmentioItem(title: "Expo", image: UIImage(named: "BotonExpoComercialP12"))
            
        ]
    }
    
    
    
    private func segmentioOptions() -> SegmentioOptions {
        var imageContentMode = UIViewContentMode.center
        switch segmentioStyle {
        case .imageBeforeLabel, .imageAfterLabel, .imageOverLabel:
            imageContentMode = .scaleAspectFit
        default:
            break
        }
        
        return SegmentioOptions(
            backgroundColor:  .clear,
            maxVisibleItems: 3,
            scrollEnabled: true,
            indicatorOptions: segmentioIndicatorOptions(),
            horizontalSeparatorOptions: segmentioSeparationOptions(),
            verticalSeparatorOptions: nil,
            imageContentMode: imageContentMode,
            labelTextAlignment: .center,
            labelTextNumberOfLines: 1,
            segmentStates: segmentioStates(),
            animationDuration:0.1
        )
    }
    
    private func segmentioStates() -> SegmentioStates {
        let font = UIFont.systemFont(ofSize:16)
        return SegmentioStates(
            defaultState: segmentioState(
                backgroundColor: ColorPallete.TransparentColor,
                titleFont: font,
                titleTextColor: .black
            ),
            selectedState: segmentioState(
                backgroundColor: ColorPallete.TransparentColor,
                titleFont: font,
                titleTextColor: .white
            ),
            highlightedState: segmentioState(
                backgroundColor: ColorPallete.TransparentColor,
                titleFont: font,
                titleTextColor: .white
            )
        )
    }
    
    private func segmentioState(backgroundColor: UIColor, titleFont: UIFont, titleTextColor: UIColor) -> SegmentioState {
        return SegmentioState(backgroundColor: backgroundColor, titleFont: titleFont, titleTextColor: titleTextColor)
    }
    
    private func segmentioIndicatorOptions() -> SegmentioIndicatorOptions {
        return SegmentioIndicatorOptions(
            type: .bottom,
            ratio: 1,
            height: 3,
            color: ColorPallete.WhiteColor
        )
    }
    private func segmentioSeparationOptions() -> SegmentioHorizontalSeparatorOptions{
        return SegmentioHorizontalSeparatorOptions(
            type: SegmentioHorizontalSeparatorType.topAndBottom, // Top, Bottom, TopAndBottom
            height: 0,
            color: .gray
        )
    }
    
    private func preparedViewControllers() -> [UIViewController] {
        
        let tab1 = CancunICCVC.create(storyboardId:"CancunICCVC")
        
        let tab2 = SalonesVC.create(storyboardId:"SalonesVC")
        
        let tab3 = ExpoVC.create(storyboardId:"ExpoVC")
        
        
        return [tab1, tab2, tab3]
        //        return viewcontrollers
    }
    //
    private func selectedSegmentioIndex() -> Int {
        return 0
    }
    
    private func setupScrollView() {
        let viewControllers: [UIViewController] = self.preparedViewControllers()
        
        print(viewControllers.count)
        scrollView.contentSize = CGSize(
            width: UIScreen.main.bounds.width * CGFloat(viewControllers.count),
            height: scrollView.frame.height
        )
        
        
        for (index, viewController) in viewControllers.enumerated() {
            viewController.view.frame = CGRect(
                x: UIScreen.main.bounds.width * CGFloat(index),
                y: 0,
                width: scrollView.frame.width,
                height: scrollView.frame.height
            )
            addChildViewController(viewController)
            scrollView.addSubview(viewController.view, options: .useAutoresize) // module's extension
            viewController.didMove(toParentViewController: self)
        }
    }
    
    // MARK: - Actions
    
    private func goToControllerAtIndex(index: Int) {
        segmentioView.selectedSegmentioIndex = index
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        let tracker = GAI.sharedInstance().defaultTracker
        tracker?.set(kGAIScreenName, value: "Recinto")
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
extension ICCVC : UIScrollViewDelegate{
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = floor(scrollView.contentOffset.x / scrollView.frame.width)
        segmentioView.selectedSegmentioIndex = Int(currentPage)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 0)
    }
    
}
