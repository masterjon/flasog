//
//  ComitesViewController.swift
//  flasog
//
//  Created by Jonathan Horta on 7/18/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit
import Segmentio

class ComitesViewController: UIViewController {
    var segmentioStyle = SegmentioStyle.onlyLabel
    var segmentioView: Segmentio!
    let tabs_content = [
        [
            "title": "Comité Ejecutivo FLASOG",
            "image":"LogoFLASOGP5",
            "items": [["name":" Dr. Edgar Iván Ortíz Lizcano","image":"1EdgarIvan-P7", "pos":"Presidente"],
                      ["name":"Dr. Rafael Padrón Burgos","image":"2RafaelPadron-P7","pos":"Vice-Presidente"],
                      ["name":"Dr. Néstor César Garello","image":"3NestorGarello-P7","pos":"Secretario"],
                      ["name":"Dr. R. Alfonso Arias Alvarez","image":"4AlfonsoArias-P7","pos":"Tesorero"],
                      ["name":"Dr. Samuel Karchmer K. ","image":"5SamuelKarchmer-P7","pos":"Presidente Electo Periodo 2017-2020"],
                      ["name":"Dr. José Fernando De Gracia S.","image":"6JoseFernando-P7","pos":"Past Presidente"],
                      ["name":"Dr. Ricardo Fescina","image":"7RicardoFescina-P7","pos":"Director Ejecutivo"],
                      ["name":"Dr. Rubén Darío Mora","image":"8RubenDario-P7","pos":"Director Administrativo"],
                      ["name":"Dr. Paulino Vigil De Gracia","image":"9PaulinoVigil-P7","pos":"Director Científico"],
                      ["name":"Dr. Pío Iván Gómez","image":"10PioIvanGomez-P7","pos":"Coordinador del Comité de Derechos Sexuales y Reproductivos"],
                      
                    ]
        ],
        [
            "title": "Consejo Directivo FEMECOG",
            "image":"LogoFEMECOGP5",
            "items": [["name":"Dr. Sergio Fajardo Dueñas","image":"1SergioFajardo-P7.1","pos":"Presidente"],
                      ["name":"Dr. Juan de Dios Maldonado A.","image":"2JuanDeDiosM-P7.1","pos":"Vice-Presidente"],
                      ["name":"Dr. Francisco J. Bernárdez Z.","image":"3FranciscoBernardez-P7.1","pos":"Primer Secretario Propietario"],
                      ["name":"Dra. Paola Iturralde Rosas P.","image":"4PaolaIturralde-P7.1","pos":"Tesorero"],
                      ["name":"Dr. Gilberto Tena Alavez","image":"5GilbertoTena-SegundoSecretarioPropietario-P7.1","pos":"Segundo Secretario Propietario"],
                      ["name":"Dr. Armando Montaño Uzcanga","image":"6ArmandoMontañoUzcanga-PrimerSecretarioSuplente-P7.1","pos":"Primer Secretario Suplente"],
                      ["name":"Dr. Marcelino Hernández V.","image":"7MarcelinoHernandezValencia-SegundoSecretarioPropietario-P7.1","pos":"Segundo Secretario Suplente"],
                      ["name":"Dra. Miriam C. Negrín Pérez","image":"8MiriamCNegrinPerezSub-Tesorero-P7.1","pos":"Sub-Tesorero"]]
        ],
        [
            "title": "Comité Organizador México",
            "image":"Logo-Congreso-6.3",
            "items": [["name":"Dr. Jorge Méndez Trujeque","image":"1JorgeCMendez-P7.2","pos":"Presidente"],["name":"","image":"RecorteComite","pos":""],
                      ["name":"Dr. Luis Castillo Zapata","image":"2LuisCastillo-P7.2","pos":"Secretario"],
                      ["name":"Dr. Ariel Marrufo Soda","image":"3ArielMarrufo-P7.2","pos":"Tesorero"]]
        ],
        [
            "title": "Comité Científico FLASOG 2017",
            "image":"Logo-Congreso-6.3",
            "items": [["name":"Dr. Paulino Vigil-De Gracia","image":"1PaulinoVigil-P7.3","pos":"Coordinador General"],
                      ["name":"Dr. Kristian Navarro","image":"2CristianNavarro-P7.3","pos":"Región Centroamérica"],
                      ["name":"Dr. Javier Gómezpedroso Rea","image":"4JavierGomezpedroso-P7.3","pos":"Región México y el Caribe"],
                      ["name":"Dr. Miguel Ruoti","image":"4MiguelRuoti-P7.3","pos":"Región Cono Sur"],
                      ["name":"Dr. William Sánchez","image":"5WilliamSanchez-P7.3","pos":"Región Andina"]
            ]
        ]
    ]
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentioViewRect = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40)
        
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
        var segmentioItems : [SegmentioItem] = []
        for tab in tabs_content {
            let item = SegmentioItem(title:tab["title"] as? String, image: nil)
            segmentioItems.append(item)
        }
        return segmentioItems
    }
    
    
    
    private func segmentioOptions() -> SegmentioOptions {
        var imageContentMode = UIViewContentMode.center
        switch segmentioStyle {
        case .imageBeforeLabel, .imageAfterLabel:
            imageContentMode = .scaleAspectFit
        default:
            break
        }
        
        return SegmentioOptions(
            backgroundColor:  .clear,
            maxVisibleItems: 2,
            scrollEnabled: true,
            indicatorOptions: segmentioIndicatorOptions(),
            horizontalSeparatorOptions: nil,
            verticalSeparatorOptions: nil,
            imageContentMode: imageContentMode,
            labelTextAlignment: .center,
            labelTextNumberOfLines: 0,
            segmentStates: segmentioStates(),
            animationDuration:0.1
        )
    }
    
    private func segmentioStates() -> SegmentioStates {
        let font = UIFont.systemFont(ofSize:14)
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
            color: ColorPallete.CyanColor
        )
    }
    
    private func preparedViewControllers() -> [ComiteCollectionVC] {
        
        
        var tabs : [ComiteCollectionVC] = []
        
        for tab in tabs_content {
            let vc = ComiteCollectionVC.create(image: tab["image"] as! String, items: tab["items"] as! [[String : String]])
            tabs.append(vc)
        }
//        let tab2 = StaticTabViewController.create(storyboardId:"vc4")

        return tabs
    }
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
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}

extension ComitesViewController : UIScrollViewDelegate{
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = floor(scrollView.contentOffset.x / scrollView.frame.width)
        segmentioView.selectedSegmentioIndex = Int(currentPage)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 0)
    }
    
}
