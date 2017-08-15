//
//  ProfesoresVC.swift
//  flasog
//
//  Created by Jonathan Horta on 7/22/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import UIKit

class ProfesoresVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    class func create(storyboardId:String) -> ProfesoresVC {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        return mainStoryboard.instantiateViewController(withIdentifier: storyboardId) as! ProfesoresVC
    }
    
    @IBOutlet weak var tableView: UITableView!
    let profesores = [
        ["nombre":"Dr. Vicenzo Berghella",
         "especialidad":"Ginecólogo con subespecialidad en medicina materno fetal",
         "pais":"Italia",
         "imagen":"1VicenzoBerghella-P9",
         "descripcion":"- Experto en longitud cervical en prematurez y cesárea \n\n- Presidente de la sociedad de medicina materno fetal en EUA \n\n- Editor del journal de medicina materno fetal y neonatal, British journal of obstetrics and gynecology, Cochrane review y American journal of obstetrics and gynecology \n\n- Práctica diaria en el Thomas Jefferson university hospital en Philadelphia \n\nParticipaciones: \n - Parto prematuro: Diagnóstico, prevención y manejo.\n- Progesterona, pesarios y prematuridad.\n- Ultrasonido obstétrico.\n - Complicaciones médicas del embarazo."],
        ["nombre":"Dr. Gian Carlo Mari",
         "especialidad":"Ginecólogo con subespecialidad en medicina materno fetal",
         "pais":"USA",
         "imagen":"2GianCarloMari-P9",
         "descripcion":"- Experto en RCIU y USG Doppler \n\n- Director del centro de medicina materno fetal 'le bonheur childrens medical center' \n\n- Práctica diaria en ELUT regional one physicians en Memphis Tenesse. \n\nParticipaciones:\n- Obesidad y diabetes gestacional: La epidemia del presente con secuelas futuras.\n- Ultrasonido obstétrico\n- RCIU: Puntos clave para la toma de decisiones."],
        ["nombre":"Dra. Alessandra Graziottin",
         "especialidad":"Ginecóloga oncóloga sexóloga",
         "pais":"Italia",
         "imagen":"3AlessandraGraziotin-P9",
         "descripcion":"- Psicoterapeuta en medicina sexual y es miembro de la facultad del master de sexualidad humana y andrología de la universidad de Florencia\n\n- Directora del centro de ginecología y sexualidad médica del hospital San Raffaele Resnati en Milán Italia.\n\n- Ha publicado 15 libros, más de 70 capítulos de libros y más de 85 artículos.\n\nParticipaciones:\n- Patología vulvar: El dolor de cabeza para el ginecólogo\n- Avances en la anticoncepción\n- Menopausia “Una visión holística e integral”\n- Conferencia especial"],
        ["nombre":"Dra. Cynthia Stuenkel",
         "especialidad":"Especialista en endocrinología y metabolismo",
         "pais":"USA",
         "imagen":"4CynthiaStuenkel-P9",
         "descripcion":"- Profesor clínico de medicina en la universidad de california\n\n- Fundadora de las primeras clínicas de menopausia\n\n- Actualmente trabaja en la unidad de endocrinología y metabolismo de la universidad de san diego california\n\nParticipaciones:\n- Rutas de suministro y límites de la THM: Cuando los estudios clínicos no aplican.\n- Menopausia “Una visión holística e integral”\n- Conferencia especial"],
        ["nombre":"Dr. Benjamin Sandler",
         "especialidad":" Ginecólogo y obstetra con subespecialidad en infertilidad y cirugía reproductiva",
         "pais":"USA",
         "imagen":"5BenjaminSandlerP9",
         "descripcion":"\n\n- Ginecólogo y obstetra con subespecialidad en infertilidad y cirugía reproductiva en el hospital Mount Sinai, Nueva York.\n\n- Codirector de la sociedad reproductiva de Nueva York\n\n- Responsable de múltiples técnicas actuales de reproducción asistida\n\n- Autor y coautor de múltiples capítulos y artículos sobre infertilidad\n\nParticipaciones:\n- Cirugía reproductiva y fertilización in vitro, ¿Complementos u opuestos?\n- Mejorando el pronóstico reproductivo en la mujer con problema de fertilidad."],
        ["nombre":"Dr. Willy Davila",
         "especialidad":"Ginecólogo y obstetra con especialidad uro ginecología ",
         "pais":"USA",
         "imagen":"6WillyDavila-P9",
         "descripcion":"- Presidente del departamento de ginecología y jefe de uro ginecología\n\n- Experto en prolapso uterino y continencia urinaria y cirugía reconstructiva de la pelvis de la Cleveland clinic Florida.\n\nParticipaciones:\n- Uroginecología en la práctica diaria del ginecoobstetra\n- Prolapso genital: Reparaciñon con tejido nativo vs mallas\n- Más allá del ejercicio profesional del ginecoobstetra: Visión empresarial del consultorio"],
        ["nombre":"Dra. Karin Huyser",
         "especialidad":"",
         "pais":"Sudáfrica",
         "imagen":"7KarinHuysner-P9",
         "descripcion":"- Profesor adjunto del departamento de ginecología y obstetricia de la facultad de ciencias universidad de pretoria, Sudáfrica\n\n- Maneja el laboratorio de reproducción en el programa de Steve biko hospital académico\n\n- Las áreas de investigación y expertise son enfermedades de transmisión sexual y manipulación de semen, así como técnicas de fertilización asistida accesibles.\n\nParticipaciones:\n- Conferencia especial\n- Infecciones obstétricas emergentes. El ginecoobstetra ante nuevos retos: VIH, ZIKA, Chikungunya, Dengue y malaria."],
        ["nombre":"Dr. Jack Ludmir",
         "especialidad":"Ginecólogo especialista en medicina materno fetal",
         "pais":"USA",
         "imagen":"8JackLudmir-P9",
         "descripcion":"- Trabaja en el hospital de Pennsylvania\n\n- Experto en embarazo de alto riesgo e insuficiencia cervical y alteraciones uterinas\n\n- Autor de más de 47 artículos médicos y múltiples capítulos en libros\n\nParticipaciones:\n- Preeclampsia\n– Eclampsia\n- Césarea: De una intervención salvadora a un problema de salud pública\n- Manejo conservador de preeclampsia severa\n- Progesterona, pesarios y prematuridad"],
        ["nombre":"Dr. Sebastian Ilanes",
         "especialidad":"Ginecólogo y obstetra con especialidad en medicina matero fetal ",
         "pais":"Chile",
         "imagen":"9SebastianIlanes-P9",
         "descripcion":"- Profesor titular de ginecología y obstetricia, facultad de medicina universidad de los andes. Profesor asociado honorario de la University of Queensland center for clinical research.\n\n- Magíster en ciencias médicas, mención biología de la reproducción, universidad de chile.\n\n- Research fellow, university of west of England.\n\n- Sus áreas de investigación incluyen: marcadores bioquímicos para predicción de parto prematuro, diabetes gestacional, mecanismos fisiopatológicos de la pre eclampsia.\n\nParticipaciones:\n- Tamizaje en el primer trimestre\n- Obesidad y diabetes gestacional: La epidemia del presente con secuelas futuras\n- Curso Precongreso: Complicaciones médicas del embarazo"],
        ["nombre":"Dr. Yves Ville",
         "especialidad":"Ginecólogo y obstetra con especialidad en medicina materno fetal",
         "pais":"Francia",
         "imagen":"10YvesVille-P9",
         "descripcion":"- Profesor y jefe del servicio de obstetricia y medicina fetal en el hospital Necker enfants malades, París\n\n- Magíster en ciencias médicas, mención biología de la reproducción, universidad de chile.\n\n- Sus áreas de investigación incluyen: diagnóstico prenatal y cirugía fetal\n\nParticipaciones:\n- Cirugía fetal: ¿Qué se hace en México y Latinoamérica?\n- Diagnóstico perinatal y abordaje genético"],
        ["nombre":"Dr. Andrea Riccardo Genazzani",
         "especialidad":"Catedrático de obstetricia y ginecología",
         "pais":"Italia",
         "imagen":"11AndreaRiccardo-P9",
         "descripcion":"- Catedrático de obstetricia y ginecología y nominado director del departamento de obstetricia y ginecología de la universidad de Cagliari, Italia\n\n- Ha sido presidente de la sociedad internacional de endocrinología ginecológica, de la sociedad europea de ginecología, de la sociedad internacional de menopausia\n\n- Editor y jefe de la revista de endocrinología ginecológica desde 1987.\n\n- Miembro del board editorial de las revistas: diario de endocrinología clínica y metabolismo, clinical endocrinology, revista europea de endocrinología y neuroendocrinología, revista de investigación de endocrinología, American Journal of obstetrics and gynecologist y American journal of fertility and sterility.\n\n- Autor de más de 742 artículos y es editor de más de 42 libros.\n\nParticipaciones:\n- Menopausia “Una visión holística e integral”\n- Conferencia especial\n- Patología proliferativa y hormonas en la glándula mamaria"],
        ["nombre":"Dr. Baha Sibai",
         "especialidad":"Ginecología y obstetra con subespecialidad medicina materno fetal",
         "pais":"USA",
         "imagen":"12BahaSibai-P9",
         "descripcion":"- Profesor y presidente del departamento de obstetricia y ginecología de la universidad de Cincinnati college of medicine.\n\n- Director del programa de becas de maternal-fetal medicine fellowship program.\n\n- Líder académico y contribuciones a la investigación, en las enfermedades hipertensivas del embarazo que le ha otorgado el reconocimiento nacional e internacional en el campo de la medicina materno-fetal.\n\n- Autor y co-autor de más de 500 publicaciones nacionales e internacionales.\n\nParticipaciones:\n- Actualidades en preeclampsia, eclampsia y HELLP.\n- Manejo conservador de preeclampsia severa\n- Curso Precongreso Complicaciones médicas del embarazo"],
        ["nombre":"Dr. Antonio Santillán Gómez ",
         "especialidad":"Ginecólogo oncólogo",
         "pais":"USA",
         "imagen":"13AntonioSantillan-P9",
         "descripcion":"- Ginecólogo oncólogo certificado en cirugía robótica trabajando actualmente en Texas oncology San Antonio medical center y en el Texas oncology San Antonio stone oak.\n\n- Sus áreas de expertise son:\n\n- Cirugía de mínima invasión, cirugía robótica, tratamiento médico oncológico\n\n- Miembro de la sociedad de ginecología oncológica, colegio americano de ginecología y obstetricia y de la sociedad internacional de cáncer ginecológico.\n\nParticipaciones:\n- Diagnóstico precoz del cáncer ginecológico\n- Cirugía robótica en cáncer ginecológico"],
        
        
        ["nombre":"Dr. Chittaranjan N. Purandare",
         "especialidad":"",
         "pais":"India",
         "imagen":"ChittaranjanNPurandare",
         "descripcion":"Presidente de la Federación Internacional de Ginecología y Obstetricia (FIGO) 2015-2018 \n\n- Decano del Colegio Indio de Obstetras y Ginecólogos \n\n- Editor Emérito de la Revista Obstetricia y Ginecología de la India"],
        
        ["nombre":"Dr. Haywood L. Brown",
         "especialidad":"Especialista en obstetricia y ginecología y medicinamaterno fetal",
         "pais":"USA",
         "imagen":"HaywoodLBrown",
         "descripcion":"Presidente del American College of Obstetricians and Gynecologists (ACOG) 2017-2018 \n\n- Especialista en obstetricia y ginecología y medicinamaterno fetal\n\n- Participa en la Red Perinatal de indiana, una organizacióndedicada a la disminución de la mortalidad infantil y la disparidad racial de la mortalidad infantil \n\n- Ha presidido el Comité de la Iniciativa de los Institutos Nacionales de Salud del Distrito de Columbia para la reducción de la mortalidad infantil"],
        
        ["nombre":"Dr. Dennis De Petrillo",
         "especialidad":"Ginecólogo oncólogo",
         "pais":"Canadá",
         "imagen":"DennisDePetrillo",
         "descripcion":"- Ginecólogo oncólogo \n\n-Universidad de Toronto \n\n- Premio de excelencia en ginecología oncológica de la Sociedad Internacional de Cáncer Ginecológico"],
        
        ["nombre":"Dra. Jennifer  Blake",
         "especialidad":"Especialista en ginecología y obstetricia",
         "pais":"Canadá",
         "imagen":"JenniferBlake",
         "descripcion":"- Especialista en ginecología y obstetricia\n\n- Expresidente de la Sociedad de Obstetras y Ginecólogos de Canadá \n\n- Líder en perspectivas académicas y clínicas"],
        
        ["nombre":"Dra. Verda Hicks",
         "especialidad":"",
         "pais":"USA",
         "imagen":"VerdaHicks",
         "descripcion":"- Especialista en obstetricia y ginecología y en ginecología oncológica \n\n- Trabaja en Midwest Cancer Care en Kansas City, Missouri, EUA \n\n- Tiene una amplia carrera como docente"],
        
        ["nombre":"Dr. James N. Martin Jr.",
         "especialidad":"Ginecólogoyobstetracon subespecialidad en medicina materno",
         "pais":"USA",
         "imagen":"JamesNMartinJr",
         "descripcion":"- Ginecólogoyobstetracon subespecialidad en medicina materno fetal \n\n- Profesor de obstetricia y ginecología \n\n- Director de la división de medicina materno-fetal en el Winfred L. Wiser Hospital para Mujeres y Bebés, Universidad de Mississippi Medical Center, en Jackson \n\n- Fue presidente de ACOG en el periodo 2011-2012"],
        
        ["nombre":"Dr. Antonio Santillán",
         "especialidad":"Ginecólogooncólogo certificado en cirugíarobótica",
         "pais":"USA",
         "imagen":"AntonioSantillan",
         "descripcion":"- Ginecólogooncólogo certificado en cirugíarobótica \n\n- Trabaja actualmente en TexasOncology,San Antonio Medical Center y en elTexasOncology, San Antonio Stone Oak, EUA\n\n- Sus áreas de experiencia son:cirugía de mínimainvasión y cirugíarobótica"],
        
        ["nombre":"Dra. Jeanne Conry",
         "especialidad":"",
         "pais":"USA",
         "imagen":"JeanneConry",
         "descripcion":"- Fue la presidente 64 delAmerican Congress of Obstetricians and Gynecologists (ACOG)\n\n- Médico Asistente Jefe delPermanentMedical Group in Roseville, CA, EUA \n\n- Profesora clinica asociada de obstetricia y ginecologíaen laUniversity of California, Davis\n\n- Practica obstetricia y ginecologia en elPermanent Medical Group"],
        
        ["nombre":"Dr. Luis Cabero",
         "especialidad":"",
         "pais":"España",
         "imagen":"LuisCabero",
         "descripcion":"- Catedrático de Obstetricia y Ginecología de la Universidad Autónoma de Barcelona, España \n\n- Director del Servicio de Obstetricia y Ginecología del Hospital Quirón de Barcelona"],
        
        ["nombre":"Dr. Gian Carlo Di Renzo",
         "especialidad":"",
         "pais":"Italia",
         "imagen":"GianCarlosDiRenzo",
         "descripcion":"- Investigador en la Universidad de Perugia, Italia\n\n- Profesor de obstetricia y ginecología y jefe del Centro de Perinatología y Reproducción, Departamento de Ginecología, Obstetricia y Pediatría, Universidad de Perugia\n\n- Presidente de la Sección de Obstetricia y Ginecología y Decano de la Facultad de Obstetricia y Ginecología\n\n- Presidente del Departamento de Obstetricia y Ginecología, Universidad de Perugia"],
        
        ["nombre":"Dr. José Vicente González Navarro",
         "especialidad":"",
         "pais":"España",
         "imagen":"JoseVicenteGonzalesNavarro",
         "descripcion":"- Ginecólogo del Hospital Clínico Universitario Lozano Blesa, de Zaragoza \n\n- Presidente de la Sociedad Española de Contracepción"],
        
        ["nombre":"Dr. Moshe Hod",
         "especialidad":"",
         "pais":"Israel",
         "imagen":"MosheHod",
         "descripcion":"- Director de la División de Medicina Materno Fetal del Hospital de Mujeres Helen Schneider del Centro Médico Rabin\n\n- Profesor de Obstetricia y Ginecología en la Facultad de Medicina de Sackler en la Universidad de Tel Aviv, Israel\n\n- Miembro de la Junta Directiva Ejecutiva de la Asociación Europea de Medicina Perinatal (EAPM)\n\n- Presidente del Grupo de Trabajo sobre Diabetes y Embarazo de EAPM \n\n- Miembro de la Junta Directiva Ejecutiva de la Asociación Internacional de Grupos de Estudio de Embarazo de Diabéticas (IADPSG)"],
        
        ["nombre":"Dr. José Ramón Serrano Navarro",
         "especialidad":"Médico ginecólogo",
         "pais":"España",
         "imagen":"JoseRamonSerrano",
         "descripcion":"- Médico ginecólogo\n\n- Jefe de servicio de obstetricia y ginecología del Hospital Alto Deva en Mondragón, Guipúzcoa \n\n- Fue presidente de la Sociedad Española de Contracepción"]
        
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profesores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if let nombre = cell.viewWithTag(1) as? UILabel{
            nombre.text = profesores[indexPath.row]["nombre"]
        }
        if let especialidad = cell.viewWithTag(2) as? UILabel{
            especialidad.text = profesores[indexPath.row]["especialidad"]
        }
        if let pais = cell.viewWithTag(3) as? UILabel{
            pais.text = profesores[indexPath.row]["pais"]
        }
        if let imagen = cell.viewWithTag(4) as? UIImageView{
            imagen.image = UIImage(named: profesores[indexPath.row]["imagen"]!)
        }

        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.00
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow{
            if let detail = segue.destination as? ProfesoresDetailVC{
                detail.name = profesores[indexPath.row]["nombre"]
                detail.special = profesores[indexPath.row]["especialidad"]
                detail.imageName = profesores[indexPath.row]["imagen"]
                detail.desc = profesores[indexPath.row]["descripcion"]
            }
        }
            
        
        
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK:\n\n- Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

}
