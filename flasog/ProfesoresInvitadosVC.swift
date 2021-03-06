//
//  ProfesoresInvitadosVC.swift
//  flasog
//
//  Created by Jonathan Horta on 8/14/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProfesoresInvitadosVC: UIViewController, UITableViewDataSource {
    
    class func create(storyboardId:String) -> ProfesoresInvitadosVC {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! ProfesoresInvitadosVC
    }
    
    let profesores = [
        
        ["name":"ACEVEDO GALLEGOS SANDRA","country":"MEXICO"],
        ["name":"ACOSTA ALFARO LUIS FERNANDO","country":"MEXICO"],
        ["name":"ACUÑA JUAN MANUEL","country":"EUA"],
        ["name":"AGUINAGA RÍOS MÓNICA","country":"MEXICO"],
        ["name":"AMBÁS ARGÜELLES MIGUEL","country":"MEXICO"],
        ["name":"ARANDA FLORES CARLOS","country":"MEXICO"],
        ["name":"ARIAS ALFONSO","country":"VENEZUELA"],
        ["name":"ARTURO MARÍA CECILIA","country":"COLOMBIA"],
        ["name":"AURIOLES LÓPEZ GERARDO","country":"MEXICO"],
        ["name":"ÁVILA GAMBOA DALTON","country":"ECUADOR"],
        ["name":"AYALA MÉNDEZ JOSÉ ANTONIO","country":"MEXICO"],
        ["name":"BARRAGÁN CURIEL EDUARDO","country":"MEXICO"],
        ["name":"BARRERA GONZÁLEZ LUIS ALBERTO","country":"MEXICO"],
        ["name":"BARRIOS PRIETO ERNESTO","country":"MEXICO"],
        ["name":"BARRÓN VALLEJO JESÚS","country":""],
        ["name":"BEDOYA TORRES RAFAEL","country":"MEXICO"],
        ["name":"BEITIA ALFREDO ","country":"PANAMA"],
        ["name":"BERGHELLA VICENZO","country":"EUA"],
        ["name":"BERMÚDEZ RAÚL","country":"CUBA"],
        ["name":"BERNÁRDEZ ZAPATA FRANCISCO JOSÉ","country":"MEXICO"],
        ["name":"BIANCHI ANA ","country":"URUGUAY"],
        ["name":"BLAKE JENNIFER","country":"CANADA"],
        ["name":"BOLATTI HÉCTOR ","country":"ARGENTINA"],
        ["name":"BRACHE VIVIAN","country":"REPDOMINICANA"],
        ["name":"BRAVO RAÚL","country":"PANAMA"],
        ["name":"BRIOZZO LEONEL","country":"URUGUAY"],
        ["name":"BRISEÑO SAINZ ANTONIO JESÚS ","country":"MEXICO"],
        ["name":"BROWN HAYWOOD L.","country":"EUA"],
        ["name":"BUSTER JOHN","country":""],
        ["name":"CABERA ROURA LUIS ","country":"ESPANA"],
        ["name":"CAMPOS JORGE","country":"MEXICO"],
        ["name":"CANTÓN ROMERO JUAN CARLOS","country":"MEXICO"],
        ["name":"CÁRCAMO WENDY","country":"HONDURAS"],
        ["name":"CARRERA ESTUARDO","country":"GUATEMALA"],
        ["name":"CARRERA CERVÓN ARMANDO ENRIQUE","country":"MEXICO"],
        ["name":"CARRILLO JORGE","country":"COLOMBIA"],
        ["name":"CARROLI GUILLERMO","country":"ARGENTINA"],
        ["name":"CARVAJAL VALENCIA JAVIER ANDRÉS","country":"COLOMBIA"],
        ["name":"CASTAÑEDA JIMMY","country":"COLOMBIA"],
        ["name":"CASTELAZO MORALES ERNESTO","country":"MEXICO"],
        ["name":"CASTRO MARGARITA","country":"PANAMA"],
        ["name":"CELIS ALFREDO","country":"PERU"],
        ["name":"CELIS GONZÁLEZ CUAUHTÉMOC","country":"MEXICO"],
        ["name":"CLAROS JOSÉ MANUEL ","country":"HONDURAS"],
        ["name":"CONRY JEANNE","country":"EUA"],
        ["name":"COPADO MENDOZA YAZMÍN","country":"MEXICO"],
        ["name":"CORTÉS HERRERA ROGELIO","country":"MEXICO"],
        ["name":"CRUZ AURELIO","country":""],
        ["name":"CRUZ MARTÍNEZ JOSÉ ROGELIO ","country":"MEXICO"],
        ["name":"DA FONSECA EDUARDO","country":"BRASIL"],
        ["name":"DAGUERRE PEDRO","country":"ARGENTINA"],
        ["name":"DÁVILA WILLY","country":"EUA"],
        ["name":"DE GRACIA SILGADO JOSÉ FERNANDO","country":"PANAMA"],
        ["name":"DE MUCIO BREMEN","country":"URUGUAY"],
        ["name":"DE PETRILLO DENNIS","country":"CANADA"],
        ["name":"DEXTRE MARIBEL ","country":"PERU"],
        ["name":"DI RENZO GIAN CARLO","country":"ITALIA"],
        ["name":"DÍAZ IVONNE","country":"COLOMBIA"],
        ["name":"DÍAZ CERVERA DENCY LORENZO","country":"MEXICO"],
        ["name":"DÍAZ LÓPEZ ELSA","country":"MEXICO"],
        ["name":"DÍAZ DE LEÓN MARÍA FERNANDA","country":""],
        ["name":"DUROCHER JILL","country":"EUA"],
        ["name":"EPIFANIO ROBERTO","country":"PANAMA"],
        ["name":"ERRAMUSPE ESPINOSA ÁLVARO","country":"URUGUAY"],
        ["name":"ESCOBAR VIDARTE MARÍA FERNANDA","country":"COLOMBIA"],
        ["name":"ESPINO Y SOSA SALVADOR ","country":"MEXICO"],
        ["name":"ESTEVES ESTEVES JULIANA","country":"BRASIL"],
        ["name":"FAJARDO DUEÑAS SERGIO","country":"MEXICO"],
        ["name":"FAVELA HEREDIA CÉSAR","country":"MEXICO"],
        ["name":"FERRIRO DELGADO GUSTAVO","country":"URUGUAY"],
        ["name":"FESCINA RICARDO","country":"URUGUAY"],
        ["name":"FIGUEROA MARÍA TERESA","country":"BOLIVIA"],
        ["name":"FÜCHTNER CARLOS","country":"BOLIVIA"],
        ["name":"GAGO FRANCISCO ","country":"ARGENTINA"],
        ["name":"GARELLO NÉSTOR","country":"ARGENTINA"],
        ["name":"GENAZZANI ANDREA  RICCARDO","country":"ITALIA"],
        ["name":"GÓMEZ PÍO IVÁN","country":"COLOMBIA"],
        ["name":"GÓMEZPEDROSO REA JAVIER","country":"MEXICO"],
        ["name":"GÓMEZ PONCE DE LEÓN RODOLFO","country":"ARGENTINA"],
        ["name":"GONEL JULIO","country":"REPDOMINICANA"],
        ["name":"GONZÁLEZ NAVARRO JOSÉ VICENTE","country":"ESPANA"],
        ["name":"GONZÁLEZ ARIAS FREDDY","country":"VENEZUELA"],
        ["name":"GONZÁLEZ MARTÍNEZ JOSÉ MANUEL ","country":"MEXICO"],
        ["name":"GONZÁLEZ  SERRANO FELIPE","country":"MEXICO"],
        ["name":"GORBEA CHÁVEZ VIRIDIANA","country":"MEXICO"],
        ["name":"GRAZIOTTIN ALESSANDRA","country":"ITALIA"],
        ["name":"GRIMALDO VALENZUELA PEDRO MARIO","country":"MEXICO"],
        ["name":"GROSSO ESPINOSA JUAN MANUEL","country":"MEXICO"],
        ["name":"GUADARRAMA SÁNCHEZ FRANCISCO RAFAEL","country":"MEXICO"],
        ["name":"GUTIÉRREZ ESCOTO PABLO","country":"MEXICO"],
        ["name":"HABICH DIEGO","country":"ARGENTINA"],
        ["name":"HERNÁNDEZ LUIS","country":"GUATEMALA"],
        ["name":"HERNÁNDEZ MARÍN IMELDA","country":"MEXICO"],
        ["name":"HERNÁNDEZ VALENCIA MARCELINO","country":"MEXICO"],
        ["name":"HERNÁNDEZ MUÑOZ VERÓNICA AIDÉ","country":"MEXICO"],
        ["name":"HERRERA ENRIQUE","country":"COLOMBIA"],
        ["name":"HICKS VERDA","country":"EUA"],
        ["name":"HINOJOSA CRUZ JUAN CARLOS ","country":"MEXICO"],
        ["name":"HOD MOSHE ","country":"ISRAEL"],
        ["name":"HUERTA ERASMO","country":"PERU"],
        ["name":"ILLANES LÓPEZ SEBASTIÁN","country":"CHILE"],
        ["name":"ITURRALDE ROSAS PRIEGO PAOLA","country":"MEXICO"],
        ["name":"JAIMES VALENTÍN","country":"PERU"],
        ["name":"JARQUÍN DOUGLAS","country":"EL SALVADOR"],
        ["name":"KABLY AMBE ALBERTO","country":"MEXICO"],
        ["name":"KAPP NATHALIE","country":""],
        ["name":"KARCHMER KRIVITZKY SAMUEL ","country":"MEXICO"],
        ["name":"KOLAR – NEUQUEN MARCELO ","country":"ARGENTINA"],
        ["name":"LA MARCA ANTONIO","country":"MARCA ANTONIO"],
        ["name":"LABOVSKY MARISA","country":"ARGENTINA"],
        ["name":"LARA BARRAGÁN IGNACIO","country":"MEXICO"],
        ["name":"LEIS MÁRQUEZ MARÍA TERESITA","country":"MEXICO"],
        ["name":"LIRA PLASCENCIA JOSEFINA","country":"MEXICO"],
        ["name":"LIZAOLA DÍAZ DE LEÓN HERIBERTO","country":"MEXICO"],
        ["name":"LLOYD ISABEL","country":"PANAMA"],
        ["name":"LÓPEZ ZEPEDA MARCO A.","country":"MEXICO"],
        ["name":"LUDMIR JACK","country":"EUA"],
        ["name":"LUKIN GRACIELA","country":"ARGENTINA"],
        ["name":"MALDONADO ALVARADO JUAN DE DIOS","country":"MEXICO"],
        ["name":"MANCERA RESÉNDIZ MIGUEL ÁNGEL","country":"MEXICO"],
        ["name":"MARDONES FRANCISCO","country":""],
        ["name":"MARES MÁRQUEZ GERARDO","country":"MEXICO"],
        ["name":"MARTIN JR. JAMES N.","country":"EUA"],
        ["name":"MARTÍNEZ CHAPA ARNULFO","country":"MEXICO"],
        ["name":"MARTÍNEZ GARCÍA ALFONSO ","country":"MEXICO"],
        ["name":"MATEO SÁNEZ HENRY","country":"MEXICO"],
        ["name":"MEADE TREVIÑO PAULO F.","country":"MEXICO"],
        ["name":"MÉNDEZ GONZÁLEZ ANTONIO","country":"MEXICO"],
        ["name":"MÉNDEZ TRUJEQUE JORGE ","country":"MEXICO"],
        ["name":"MENDIETA ALBORNOZ MAURICIO","country":"COLOMBIA"],
        ["name":"MESSINA ANALÍA","country":"BOLIVIA"],
        ["name":"MIRANDA OCTAVIO","country":"ECUADOR"],
        ["name":"MIRTA MORALES ELBA","country":"ARGENTINA"],
        ["name":"MOLINA SAULO","country":"COLOMBIA"],
        ["name":"MONTAÑO USCANGA JESÚS ARMANDO","country":"MEXICO"],
        ["name":"MONTOYA ROMERO JOSÉ DE JÉSUS","country":"MEXICO"],
        ["name":"MORA RUBÉN DARIO","country":"PANAMA"],
        ["name":"MORÁN VILLOTA CARLOS E.","country":"MEXICO"],
        ["name":"MOREIRA DE SÁ RENATO","country":"BRASIL"],
        ["name":"MORENO AMANDA","country":"BOLIVIA"],
        ["name":"MORENO GARCÍA CARLA ","country":"MEXICO"],
        ["name":"MORENO VERDUZCO ELSA","country":"MEXICO"],
        ["name":"MOSTAJO FLORES DESIRRE","country":"BOLIVIA"],
        ["name":"MUCIÑO MANJARREZ YOLITZMA","country":"MEXICO"],
        ["name":"MUÑOZ GONZÁLEZ DAVID EDUARDO","country":"MEXICO"],
        ["name":"NAVARRO SALOMÓN KRISTIAN","country":"HONDURAS"],
        ["name":"NEGRÍN PÉREZ MIRIAM C.","country":"MEXICO"],
        ["name":"NERI RUZ EDUARDO S.","country":"MEXICO"],
        ["name":"NORRIS SHANE","country":"SUDAFRICA"],
        ["name":"OIZEROVICH SILVIA","country":"ESPAÑA"],
        ["name":"OLAYA GUZMÁN EMILIO JOSÉ","country":"MEXICO"],
        ["name":"OMER SAAD","country":"EUA"],
        ["name":"ORTEGA CLAVERO HORACIO","country":"MEXICO"],
        ["name":"ORTIZ GUILLERMO","country":""],
        ["name":"ORTÍZ LIZCANO EDGAR IVÁN","country":"COLOMBIA"],
        ["name":"ORTIZ IBARRA FEDERICO JAVIER","country":"MEXICO"],
        ["name":"PADILLA DE GIL MARINA","country":"ARGENTINA"],
        ["name":"PADRÓN RAFAEL","country":"COLOMBIA"],
        //["name":"PALACIOS SANTIAGO","country":"ARGENTINA"],
        ["name":"PARADAS CABA ALEJANDRO","country":"REPDOMINICANA"],
        ["name":"PARDO IGOR","country":"BOLIVIA"],
        ["name":"PEDRAZA GONZÁLEZ LEONEL ALFONSO","country":"MEXICO"],
        ["name":"PELÁEZ JORGE","country":"CUBA"],
        ["name":"PERALES MARÍN ALFREDO","country":""],
        ["name":"PÉREZ MARÍA MERCEDES","country":"VENEZUELA"],
        ["name":"PÉREZ CAMPOS EZEQUIEL ","country":"ESPANA"],
        ["name":"PÉREZ WULFF JUAN ANDRÉS","country":"VENEZUELA"],
        ["name":"PURANDARE CHITTARANJAN N.","country":"INDIA"],
        ["name":"QUESNEL BENÍTEZ CARLOS","country":"MEXICO"],
        ["name":"RAMÍREZ NEGRIN ATZIRI","country":"MEXICO"],
        ["name":"RAMÍREZ POLO ISABEL","country":"ESPANA"],
        ["name":"REYES PAREDES NORBERTO","country":"MEXICO"],
        ["name":"ROBLES ELÍAS FRANCISCO JAVIER","country":"MEXICO"],
        ["name":"RODRÍGUEZ COLORADO SILVIA","country":"MEXICO"],
        ["name":"ROMERO ARAUZ JUAN FERNANDO","country":"MEXICO"],
        ["name":"ROPERO ÁLVAREZ ALBA MARÍA ","country":"EUA"],
        ["name":"RUBIO GONZALO","country":"CHILE"],
        ["name":"RUILOBA MADERO FRANCISCO JAVIER","country":"MEXICO"],
        ["name":"RUIZ PARRA ARIEL IVÁN ","country":"COLOMBIA"],
        ["name":"RUOTI MIGUEL","country":"PARAGUAY"],
        ["name":"SÁENZ CABRERA MANUEL","country":"MEXICO"],
        ["name":"SALAS LUIS","country":"CUBA"],
        ["name":"SALAZAR LÓPEZ ORTIZ CARLOS","country":"MEXICO"],
        ["name":"SÁNCHEZ WILLIAMS","country":"VENEZUELA"],
        ["name":"SÁNCHEZ DOMINGUEZ ANDRÉS","country":"MEXICO"],
        ["name":"SÁNCHEZ RODRÍGUEZ OLIVIA","country":"MEXICO"],
        ["name":"SANDLER BENJAMÍN","country":"ARGENTINA"],
        ["name":"SANTILLÁN GÓMEZ ALFREDO ANTONIO","country":"EUA"],
        ["name":"SARROUF JORGE","country":"ARGENTINA"],
        ["name":"SCHECHTER MAURO","country":"BRASIL"],
        ["name":"SEIREF SAMUEL ","country":"ARGENTINA"],
        ["name":"SENTÍES CORTINA LUIS G.","country":"MEXICO"],
        ["name":"SEPÚLVEDA GONZÁLEZ GERARDO ","country":"MEXICO"],
        ["name":"SERRANO NAVARRO JOSÉ RAMÓN","country":"ESPANA"],
        ["name":"SERRET MONTOYA JUANA","country":"MEXICO"],
        ["name":"SERRUYA SUZANNE ","country":"URUGUAY"],
        ["name":"SIERRA LOZADA NANCY ","country":"MEXICO"],
        ["name":"SISELES NÉSTOR","country":"ARGENTINA"],
        ["name":"SOSA LIDA","country":"PARAGUAY"],
        ["name":"SOTO MEDINA ENRIQUE","country":"MEXICO"],
        ["name":"SOUZA JOAO PAULO","country":"BRASIL"],
        ["name":"TENA ALAVEZ GILBERTO","country":"MEXICO"],
        ["name":"TIRÁN SAUCEDO JOSÉ","country":"MEXICO"],
        ["name":"TORRES FARÍAS EMIGDIO","country":"MEXICO"],
        ["name":"TORRES VALDEZ ERIKA","country":"MEXICO"],
        ["name":"URIBE RAMÍREZ LUIS CARLOS","country":"MEXICO"],
        ["name":"URIONA REMY ","country":"BOLIVIA"],
        ["name":"VALENCIA CATALINA","country":"COLOMBIA"],
        ["name":"VALERIO CASTRO EMILIO","country":"MEXICO"],
        ["name":"VALERIO GRICEL","country":"URUGUAY"],
        ["name":"VARGAS HERNÁNDEZ VÍCTOR","country":"MEXICO"],
        ["name":"VARGAS ANGÉLICA","country":"COSTA RICA"],
        ["name":"VASCO MAURICIO","country":"COLOMBIA"],
        ["name":"VELÁZQUEZ CASTELLANOS PATRICIA","country":"MEXICO"],
        ["name":"VIDAL SÁENZ JOSÉ","country":"COSTA RICA"],
        ["name":"VIGIL DE-GRACIA PAULINO","country":"PANAMA"],
        ["name":"VILLEGAS ECHEVERRI JUAN DIEGO","country":"COLOMBIA"],
        ["name":"WINIKOFF BEVERLY","country":"EUA"],
        ["name":"YUEN CHON MONROY VICENTE E.","country":"ECUADOR"],
        ["name":"ZAMORA ANDRÉS","country":"COSTA RICA"],
        ["name":"ZAMORA ESCUDERO RODRIGO","country":"MEXICO"],
        
        
    ]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profesores.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if let nameLabel =  cell.viewWithTag(1) as? UILabel{
            nameLabel.text = profesores[indexPath.row]["name"]
        }
        if let flag = cell.viewWithTag(2) as? UIImageView{
            flag.image = UIImage(named:profesores[indexPath.row]["country"]!)
        }
        return cell
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
