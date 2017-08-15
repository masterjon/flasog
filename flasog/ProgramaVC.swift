//
//  ProgramaVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/4/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProgramaVC: UIViewController, UICollectionViewDataSource {

    var items :[ProgramCat] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    class func create(storyboardId:String) -> ProgramaVC {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! ProgramaVC
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadItems()

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
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadItems(){
        
        let titles = ["Cursos Precongreso","Cursos Transcongreso","Conferencias Magistrales","Conferencias Especiales", "Encuentro Latinoamericano de residentes G.O.","Simposios Especiales","Simposios Simultaneos","Foros de discusión"]
        
        for (index,item) in titles.enumerated() {
            let cat = ProgramCat()
            cat.title = item
            cat.image = "pg\(index+1)"
            self.items.append(cat)
        }
        let item1_1 = ProgramItem()
        item1_1.title = "Fortaleciendo competencias en manejo y capacitación ante la hemorragia obstétrica (Teórico-práctico)"
        item1_1.room = "2"
        item1_1.duration = 360
        item1_1.schedule = "8:00 – 14:00 hrs."
        item1_1.days = "5 de noviembre 2017"
        
        let item1_2 = ProgramItem()
        item1_2.title = "Diagnóstico precoz del cáncer ginecológico."
        
        items[0].items.append(item1_1)
        items[0].items.append(item1_2)
        
//        item1_1.desc = """
//Objetivo General:
//· Clarificar y exponer conceptos basados en evidencia con aplicabilidad inmediata al afrontar una emergencia secundaria a hemorragia obstétrica.
//
//Objetivos Específicos:
//· Exponer metodologías de manejo actuales de acuerdo a lineamientos nacionales e internacionales.
//· Demostrar dos intervenciones validadas y sencillas, pero de alto impacto en el manejo de la hemorragia obstétrica.
//· Conocer diferentes técnicas quirúrgicas de alta complejidad para manejos avanzados.
//
//Profesor Titular:
//    Dr. Paulo Meade Treviño
//
//Profesores Adjuntos:
//    Dr. Francisco Javier Robles Elías
//    Dr. Javier Andres Carvajal Valencia
//
//PROGRAMA
//
//8:00 – 8:10 hrs.
//Bienvenida y panorama del precongreso
//Dr.  Paulo Meade Treviño
//
//8:10 – 8:40 hrs.
//Manejo de choque hemorrágico por metas
//Dr. Javier Andrés Carvajal Valencia
//
//8:40 – 9:20 hrs.
//Índice de choque- papel como predictor de resultados maternos
//Dr. Héctor Bolatti
//
//9:20 – 10:10 hrs.
//Capacitación con simuladores. Alcances y limitaciones
//Dr. Heriberto Lizaola
//
//10:10 – 10:40 hrs.
//RECESO
//
//10:40 – 11:20 hrs.
//Balones hidrostáticos intrauterinos. Técnica y demostración interactiva.
//Dr. Francisco Javier Robles Elías
//
//11:20 – 12:10 hrs.
//Manejo quirúrgico. Técnicas conservadoras compresivas y vasculares
//Dr. Emigdio Torres Farías
//
//12:10 – 12:40 hrs.
//RECESO
//
//12:40 – 13:10 hrs.
//Estrategia emergente - traje antichoque no neumático. Evidencia, técnica y demostración interactiva.
//Dr. Paulo Meade Treviño
//
//13:10 – 13:40 hrs.
//Acretismo. El gran reto. Protocolo diagnóstico y de abordaje.
//Dr. Emigdio torres Farías
//
//13:40 – 14:00 hrs.
//Preguntas y Conclusiones
//Profesor:
//
//"""
        

        
        
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
