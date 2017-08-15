//
//  ScheduleContent.swift
//  flasog
//
//  Created by Jonathan Horta on 8/14/17.
//  Copyright © 2017 iddeas. All rights reserved.
//

import Foundation
func loadSchedule()->[ProgramCat]{
    var items :[ProgramCat] = []
    let titles = [
        "Cursos Precongreso", // 0
        "Cursos Transcongreso", // 1
        "Conferencias Magistrales", // 2
        "Conferencias Especiales", // 3
        "Encuentro Latinoamericano de residentes G.O.", // 4
        "Simposios Especiales", // 5
        "Simposios Simultaneos", // 6
        "Foros de discusión" // 7
    ]
    
    for (index,item) in titles.enumerated() {
        let cat = ProgramCat()
        cat.id = index
        cat.title = item
        cat.image = "pg\(index+1)"
        items.append(cat)
    }
    items[0].schedule = "7:00 – 14:00 hrs"
    items[1].schedule = "7:00 – 9:00 hrs."
    items[2].schedule = "13:00 – 13:45 hrs."
    items[3].schedule = "11:15 – 12:30 hrs."
    items[4].schedule = "13:00 - 18:30 hrs"
    items[5].schedule = "14:00 – 15:00 hrs."
    items[6].schedule = "9:30 – 11:00 hrs."
    items[7].schedule = "11:15 – 12:30 hrs."
    
    
    //****************      Cursos Precongreso   ********************
    
    let item0_1 = ProgramItem()
    item0_1.catId = 0
    item0_1.title = "Fortaleciendo competencias en manejo y capacitación ante la hemorragia obstétrica (Teórico-práctico)"
    item0_1.room = "2"
    item0_1.duration = 360
    item0_1.schedule = "8:00 – 14:00 hrs."
    item0_1.days = "5 de noviembre 2017"
    
    let item0_2 = ProgramItem()
    item0_2.catId = 0
    item0_2.title = "Diagnóstico precoz del cáncer ginecológico."
    item0_2.room = "10"
    item0_2.duration = 360
    item0_2.schedule = "8:00 – 14:00 hrs."
    item0_2.days = "5 de noviembre 2017"
    
    let item0_3 = ProgramItem()
    item0_3.catId = 0
    item0_3.title = "Menopausia “Una visión holística e integral”."
    item0_3.room = "1"
    item0_3.duration = 360
    item0_3.schedule = "8:00 – 14:00 hrs."
    item0_3.days = "5 de noviembre 2017"
    
    let item0_4 = ProgramItem()
    item0_4.catId = 0
    item0_4.title = "Complicaciones médicas durante el embarazo."
    item0_4.room = "3"
    item0_4.duration = 360
    item0_4.schedule = "8:00 – 14:00 hrs."
    item0_4.days = "5 de noviembre 2017"
    
    let item0_5 = ProgramItem()
    item0_5.catId = 0
    item0_5.title = "Curso ACOG: Controversias en la práctica."
    item0_5.room = "4"
    item0_5.duration = 360
    item0_5.schedule = "8:00 – 14:00 hrs."
    item0_5.days = "5 de noviembre 2017"
    
    let item0_6 = ProgramItem()
    item0_6.catId = 0
    item0_6.title = "Mortalidad y Morbilidad materna."
    item0_6.room = "5"
    item0_6.duration = 420
    item0_6.schedule = "8:00 – 14:00 hrs."
    item0_6.days = "5 de noviembre 2017"
    
    let item0_7 = ProgramItem()
    item0_7.catId = 0
    item0_7.title = "Temas selectos de Medicina reproductiva. Evidencia actual."
    item0_7.room = "7"
    item0_7.duration = 420
    item0_7.schedule = "8:00 – 14:00 hrs."
    item0_7.days = "5 de noviembre 2017"
    
    let item0_8 = ProgramItem()
    item0_8.catId = 0
    item0_8.title = "Derechos sexuales y reproductivos en Latinoamérica."
    item0_8.room = "8"
    item0_8.duration = 420
    item0_8.schedule = "8:00 – 14:00 hrs."
    item0_8.days = "5 de noviembre 2017"
    
    let item0_9 = ProgramItem()
    item0_9.catId = 0
    item0_9.title = "Afecciones Ginecológicas comunes en la Adolescencia y su Impacto sobre la Salud Reproductiva."
    item0_9.room = "6"
    item0_9.duration = 420
    item0_9.schedule = "8:00 – 14:00 hrs."
    item0_9.days = "5 de noviembre 2017"
    
    let item0_10 = ProgramItem()
    item0_10.catId = 0
    item0_10.title = "Parto Prematuro: Diagnóstico, Prevención y Manejo."
    item0_10.room = "9"
    item0_10.duration = 420
    item0_10.schedule = "8:00 – 14:00 hrs."
    item0_10.days = "5 de noviembre 2017"
    
    items[0].items.append(item0_1)
    items[0].items.append(item0_2)
    items[0].items.append(item0_3)
    items[0].items.append(item0_4)
    items[0].items.append(item0_5)
    items[0].items.append(item0_6)
    items[0].items.append(item0_7)
    items[0].items.append(item0_8)
    items[0].items.append(item0_9)
    items[0].items.append(item0_10)
    
    
    //****************      Cursos Transcongreso  ********************
    let item1_1 = ProgramItem()
    item1_1.catId = 1
    item1_1.title = "Ultrasonido Obstétrico"
    item1_1.room = "1"
    item1_1.duration = 480
    item1_1.schedule = "7:00 – 9:00 hrs."
    item1_1.days = "6 al 9 de noviembre 2017"
    
    let item1_2 = ProgramItem()
    item1_2.catId = 1
    item1_2.title = "Patología del tracto genital Inferior"
    item1_2.room = "9"
    item1_2.duration = 480
    item1_2.schedule = "7:00 – 9:00 hrs."
    item1_2.days = "6 al 9 de noviembre 2017"
    
    let item1_3 = ProgramItem()
    item1_3.catId = 1
    item1_3.title = "Diagnóstico prenatal y abordaje genético"
    item1_3.room = "3"
    item1_3.duration = 480
    item1_3.schedule = "7:00 – 9:00 hrs."
    item1_3.days = "6 al 9 de noviembre 2017"
    
    let item1_4 = ProgramItem()
    item1_4.catId = 1
    item1_4.title = "Uroginecología en la práctica diaria del Gineco-Obstetra"
    item1_4.room = "5"
    item1_4.duration = 480
    item1_4.schedule = "7:00 – 9:00 hrs."
    item1_4.days = "6 al 9 de noviembre 2017"
    
    
    let item1_5 = ProgramItem()
    item1_5.catId = 1
    item1_5.title = "Más allá del ejercicio profesional del Gineco-Obstetra: Visión empresarial del Gineco-obstetra"
    item1_5.room = "7"
    item1_5.duration = 480
    item1_5.schedule = "7:00 – 9:00 hrs."
    item1_5.days = "6 al 9 de noviembre 2017"
    
    let item1_6 = ProgramItem()
    item1_6.catId = 1
    item1_6.title = "Aplicaciones médicas de los medios digitales"
    item1_6.room = "8"
    item1_6.duration = 480
    item1_6.schedule = "7:00 – 9:00 hrs."
    item1_6.days = "6 al 9 de noviembre 2017"
    
    let item1_7 = ProgramItem()
    item1_7.catId = 1
    item1_7.title = "Avances en Anticoncepción"
    item1_7.room = "4"
    item1_7.duration = 480
    item1_7.schedule = "7:00 – 9:00 hrs."
    item1_7.days = "6 al 9 de noviembre 2017"
    
    
    let item1_8 = ProgramItem()
    item1_8.catId = 1
    item1_8.title = "Cirugía mínimamente Invasiva "
    item1_8.room = "10"
    item1_8.duration = 480
    item1_8.schedule = "7:00 – 9:00 hrs."
    item1_8.days = "6 al 9 de noviembre 2017"
    
    
    let item1_9 = ProgramItem()
    item1_9.catId = 1
    item1_9.title = "Pre-eclampsia y Eclampsia"
    item1_9.room = "2"
    item1_9.duration = 480
    item1_9.schedule = "7:00 – 9:00 hrs."
    item1_9.days = "6 al 9 de noviembre 2017"
    
    
    let item1_10 = ProgramItem()
    item1_10.catId = 1
    item1_10.title = "Patologías Infecciosas durante el embarazo "
    item1_10.room = "6"
    item1_10.duration = 480
    item1_10.schedule = "7:00 – 9:00 hrs."
    item1_10.days = "6 al 9 de noviembre 2017"
    
    items[1].items.append(item1_1)
    items[1].items.append(item1_2)
    items[1].items.append(item1_3)
    items[1].items.append(item1_4)
    items[1].items.append(item1_5)
    items[1].items.append(item1_6)
    items[1].items.append(item1_7)
    items[1].items.append(item1_8)
    items[1].items.append(item1_9)
    items[1].items.append(item1_10)
    
    
    //****************      Conferencias Magistrales  ********************
    let item2_1 = ProgramItem()
    item2_1.catId = 2
    item2_1.title = "Mortalidad materna en Latinoamérica. Logros y compromisos. "
    item2_1.room = ""
    item2_1.duration = 45
    item2_1.schedule = "3:00 – 13:45 hrs."
    item2_1.days = "Lunes, 6 de noviembre 2017"
    
    let item2_2 = ProgramItem()
    item2_2.catId = 2
    item2_2.title = "El circulo vicioso entre las complicaciones del embarazo y las enfermedades no transmisibles. Todo inicia inutero. La visión global de figo"
    item2_2.room = ""
    item2_2.duration = 45
    item2_2.schedule = "3:00 – 13:45 hrs."
    item2_2.days = "Lunes, 6 de noviembre 2017"
    
    let item2_3 = ProgramItem()
    item2_3.catId = 2
    item2_3.title = "Retos en la practica ginecoobstetrica en Latinoamérica."
    item2_3.room = ""
    item2_3.duration = 45
    item2_3.schedule = "3:00 – 13:45 hrs."
    item2_3.days = "Lunes, 6 de noviembre 2017"

    items[2].items.append(item2_1)
    items[2].items.append(item2_2)
    items[2].items.append(item2_3)
    
    
    //****************      Conferencias Especiales  ********************
    
    let item3_1 = ProgramItem()
    item3_1.catId = 3
    item3_1.title = "Cáncer de mama: bases moleculares y hormonales de las metástasis"
    item3_1.room = "2"
    item3_1.duration = 40
    item3_1.schedule = "11:15 – 11:45 hrs."
    item3_1.days = "Lunes, 6 de noviembre 2017"
    
    let item3_2 = ProgramItem()
    item3_2.catId = 3
    item3_2.title = "¿Se puede hacer descontaminación del semen en pacientes con Zika?"
    item3_2.room = "2"
    item3_2.duration = 40
    item3_2.schedule = "11:50 – 12:30 hrs."
    item3_2.days = "Lunes, 6 de noviembre 2017"
    
    let item3_3 = ProgramItem()
    item3_3.catId = 3
    item3_3.title = "Dolor vulvar a lo largo de la vida: desde la sombra de la negación al diagnóstico claro y preciso."
    item3_3.room = "2"
    item3_3.duration = 40
    item3_3.schedule = "11:15 – 11:45 hrs."
    item3_3.days = "Martes, 7 de noviembre 2017"
    
    let item3_4 = ProgramItem()
    item3_4.catId = 3
    item3_4.title = "Top 10 de menopausia del 2017"
    item3_4.room = "2"
    item3_4.duration = 40
    item3_4.schedule = "11:50 – 12:30 hrs."
    item3_4.days = "Martes, 7 de noviembre 2017"
    
    let item3_5 = ProgramItem()
    item3_5.catId = 3
    item3_5.title = "Preservación de la fertilidad por indicaciones médicas y sociales. Técnicas y resultados."
    item3_5.room = "2"
    item3_5.duration = 40
    item3_5.schedule = "11:15 – 11:45 hrs."
    item3_5.days = "Miércoles, 8 de noviembre 2017"
    
    let item3_6 = ProgramItem()
    item3_6.catId = 3
    item3_6.title = "ACOG"
    item3_6.room = "2"
    item3_6.duration = 40
    item3_6.schedule = "11:50 – 12:30 hrs."
    item3_6.days = "Miércoles, 8 de noviembre 2017"
    
    let item3_7 = ProgramItem()
    item3_7.catId = 3
    item3_7.title = "La formación del Gineco-obstetra en México ¿Estamos satisfechos?"
    item3_7.room = "2"
    item3_7.duration = 40
    item3_7.schedule = "11:15 – 11:45 hrs."
    item3_7.days = "Jueves, 9 de noviembre 2017"
    
    let item3_8 = ProgramItem()
    item3_8.catId = 3
    item3_8.title = "El medio ambiente y la salud sexual y reproductiva "
    item3_8.room = "2"
    item3_8.duration = 40
    item3_8.schedule = "11:50 – 12:30 hrs."
    item3_8.days = "Jueves, 9 de noviembre 2017"
    
    items[3].items.append(item3_1)
    items[3].items.append(item3_2)
    items[3].items.append(item3_3)
    items[3].items.append(item3_4)
    items[3].items.append(item3_5)
    items[3].items.append(item3_6)
    items[3].items.append(item3_7)
    items[3].items.append(item3_8)
    
    //****************      Encuentro Latinoamericano de residentes G.O.   ********************
    let item4_1 = ProgramItem()
    item4_1.catId = 4
    item4_1.title = "Módulo 1"
    item4_1.room = ""
    item4_1.duration = 60
    item4_1.schedule = "13:00hrs. – 14:00 hrs."
    item4_1.days = "Sábado, 4 de noviembre 2017"
    
    let item4_2 = ProgramItem()
    item4_2.catId = 4
    item4_2.title = "Módulo 2"
    item4_2.room = ""
    item4_2.duration = 60
    item4_2.schedule = "14:00hrs. – 15:00 hrs"
    item4_2.days = "Sábado, 4 de noviembre 2017"
    
    let item4_3 = ProgramItem()
    item4_3.catId = 4
    item4_3.title = "Módulo 3"
    item4_3.room = ""
    item4_3.duration = 60
    item4_3.schedule = "15:30hrs. – 16:30 hrs."
    item4_3.days = "Sábado, 4 de noviembre 2017"
    
    let item4_4 = ProgramItem()
    item4_4.catId = 4
    item4_4.title = "Módulo 4"
    item4_4.room = ""
    item4_4.duration = 60
    item4_4.schedule = "16:30hrs. – 17:30 hrs."
    item4_4.days = "Sábado, 4 de noviembre 2017"
    
    let item4_5 = ProgramItem()
    item4_5.catId = 4
    item4_5.title = "Módulo 5"
    item4_5.room = ""
    item4_5.duration = 60
    item4_5.schedule = "17:30hrs. – 18:30 hrs."
    item4_5.days = "Sábado, 4 de noviembre 2017"
    
    
    items[4].items.append(item4_1)
    items[4].items.append(item4_2)
    items[4].items.append(item4_3)
    items[4].items.append(item4_4)
    items[4].items.append(item4_5)
    
    //****************      Simposios Especiales   ********************
    let item5_1 = ProgramItem()
    item5_1.catId = 5
    item5_1.title = "Domingo, 5 de noviembre"
    item5_1.room = ""
    item5_1.duration = 60
    item5_1.schedule = "14:00 – 15:00 hrs"
    item5_1.days = "Domingo, 5 de noviembre"
    
    let item5_2 = ProgramItem()
    item5_2.catId = 5
    item5_2.title = "Lunes, 6 de noviembre"
    item5_2.room = ""
    item5_2.duration = 60
    item5_2.schedule = "14:00 – 15:00 hrs"
    item5_2.days = "Lunes, 6 de noviembre"
    
    let item5_3 = ProgramItem()
    item5_3.catId = 5
    item5_3.title = "Martes, 7 de noviembre"
    item5_3.room = ""
    item5_3.duration = 60
    item5_3.schedule = "14:00 – 15:00 hrs"
    item5_3.days = "Martes, 7 de noviembre"
    
    items[5].items.append(item5_1)
    items[5].items.append(item5_2)
    items[5].items.append(item5_3)
    
    //****************      Simposios simultáneos   ********************
    
    let item6_1 = ProgramItem()
    item6_1.catId = 6
    item6_1.title = "FIGO: “Consejos clínicos prácticos en medicina materno fetal”."
    item6_1.room = "1"
    item6_1.duration = 90
    item6_1.schedule = "9:30 – 11:00 hrs."
    item6_1.days = "Lunes, 6 de noviembre 2017"
    
    let item6_2 = ProgramItem()
    item6_2.catId = 6
    item6_2.title = "Cirugía robótica en cáncer ginecológico."
    item6_2.room = "5"
    item6_2.duration = 90
    item6_2.schedule = "9:30 – 11:00 hrs."
    item6_2.days = "Lunes, 6 de noviembre 2017"
    
    let item6_3 = ProgramItem()
    item6_3.catId = 6
    item6_3.title = "Obesidad y diabetes gestacional: La epidemia del presente con secuelas futuras."
    item6_3.room = "3"
    item6_3.duration = 90
    item6_3.schedule = "9:30 – 11:00 hrs."
    item6_3.days = "Lunes, 6 de noviembre 2017"
    
    let item6_4 = ProgramItem()
    item6_4.catId = 6
    item6_4.title = "Tamizaje en el primer trimestre."
    item6_4.room = "4"
    item6_4.duration = 90
    item6_4.schedule = "9:30 – 11:00 hrs."
    item6_4.days = "Lunes, 6 de noviembre 2017"
    
    let item6_5 = ProgramItem()
    item6_5.catId = 6
    item6_5.title = "Ginecología pediátrica."
    item6_5.room = "2"
    item6_5.duration = 90
    item6_5.schedule = "9:30 – 11:00 hrs."
    item6_5.days = "Lunes, 6 de noviembre 2017"
    
    let item6_6 = ProgramItem()
    item6_6.catId = 6
    item6_6.title = "Simposio derechos sexuales y reproductivos en Latinoamérica."
    item6_6.room = "2"
    item6_6.duration = 90
    item6_6.schedule = "9:30 – 11:00 hrs."
    item6_6.days = "Lunes, 6 de noviembre 2017"
    
    let item6_7 = ProgramItem()
    item6_7.catId = 6
    item6_7.title = "Simposio GYNUITY: “perspectivas nuevas sobre la hemorragia postparto (HPP) y su manejo”"
    item6_7.room = "1"
    item6_7.duration = 90
    item6_7.schedule = "9:30 – 11:00 hrs."
    item6_7.days = "Lunes, 6 de noviembre 2017"
    
    let item6_8 = ProgramItem()
    item6_8.catId = 6
    item6_8.title = "Actualidades en preeclampsia, eclampsia y HELLP"
    item6_8.room = "3"
    item6_8.duration = 90
    item6_8.schedule = "9:30 – 11:00 hrs."
    item6_8.days = "Lunes, 6 de noviembre 2017"
    
    let item6_9 = ProgramItem()
    item6_9.catId = 6
    item6_9.title = "Infecciones obstétricas emergentes. El gineco-obstetra ante nuevos retos: VIH, zika, chikungunya, dengue y malaria."
    item6_9.room = "2"
    item6_9.duration = 90
    item6_9.schedule = "9:30 – 11:00 hrs."
    item6_9.days = "Lunes, 6 de noviembre 2017"
    
    let item6_10 = ProgramItem()
    item6_10.catId = 6
    item6_10.title = "Dolor pélvico agudo y crónico"
    item6_10.room = "5"
    item6_10.duration = 90
    item6_10.schedule = "9:30 – 11:00 hrs."
    item6_10.days = "Lunes, 6 de noviembre 2017"
    
    let item6_11 = ProgramItem()
    item6_11.catId = 6
    item6_11.title = "Estrategias efectivas para reducción de la mortalidad materna"
    item6_11.room = "6"
    item6_11.duration = 90
    item6_11.schedule = "9:30 – 11:00 hrs."
    item6_11.days = "Lunes, 6 de noviembre 2017"
    
    let item6_12 = ProgramItem()
    item6_12.catId = 6
    item6_12.title = "Anticoncepción y calidad de vida. (S.E.G)"
    item6_12.room = "4"
    item6_12.duration = 90
    item6_12.schedule = "9:30 – 11:00 hrs."
    item6_12.days = "Lunes, 6 de noviembre 2017"
    
    let item6_13 = ProgramItem()
    item6_13.catId = 6
    item6_13.title = "Sociedad canadiense de ginecología y obstetricia: hablando de ginecología, una visión diferente."
    item6_13.room = "6"
    item6_13.duration = 90
    item6_13.schedule = "9:30 – 11:00 hrs."
    item6_13.days = "Lunes, 6 de noviembre 2017"
    
    
    let item6_14 = ProgramItem()
    item6_14.catId = 6
    item6_14.title = "Manejo actual de la hemorragia uterina anormal."
    item6_14.room = "4"
    item6_14.duration = 90
    item6_14.schedule = "9:30 – 11:00 hrs."
    item6_14.days = "Lunes, 6 de noviembre 2017"
    
    let item6_15 = ProgramItem()
    item6_15.catId = 6
    item6_15.title = "Cirugía fetal: ¿qué se hace en México y Latinoamérica?"
    item6_15.room = "1"
    item6_15.duration = 90
    item6_15.schedule = "9:30 – 11:00 hrs."
    item6_15.days = "Lunes, 6 de noviembre 2017"
    
    let item6_16 = ProgramItem()
    item6_16.catId = 6
    item6_16.title = "FIGO: hiperglucemia en el embarazo: iniciativa global"
    item6_16.room = "3"
    item6_16.duration = 90
    item6_16.schedule = "9:30 – 11:00 hrs."
    item6_16.days = "Lunes, 6 de noviembre 2017"
    
    let item6_17 = ProgramItem()
    item6_17.catId = 6
    item6_17.title = "Temas selectos de infertilidad"
    item6_17.room = "5"
    item6_17.duration = 90
    item6_17.schedule = "9:30 – 11:00 hrs."
    item6_17.days = "Lunes, 6 de noviembre 2017"
    
    let item6_18 = ProgramItem()
    item6_18.catId = 6
    item6_18.title = "La consulta de la paciente climatérica, más allá de la piel y los bochornos"
    item6_18.room = "2"
    item6_18.duration = 90
    item6_18.schedule = "9:30 – 11:00 hrs."
    item6_18.days = "Lunes, 6 de noviembre 2017"
    
    let item6_19 = ProgramItem()
    item6_19.catId = 6
    item6_19.title = "Patología proliferativa y hormonas en la glándula mamaria"
    item6_19.room = "2"
    item6_19.duration = 90
    item6_19.schedule = "9:30 – 11:00 hrs."
    item6_19.days = "Lunes, 6 de noviembre 2017"
    
    let item6_20 = ProgramItem()
    item6_20.catId = 6
    item6_20.title = "Enfermedad pélvica. Diagnóstico, tratamiento y repercusiones"
    item6_20.room = "4"
    item6_20.duration = 90
    item6_20.schedule = "9:30 – 11:00 hrs."
    item6_20.days = "Lunes, 6 de noviembre 2017"
    
    let item6_21 = ProgramItem()
    item6_21.catId = 6
    item6_21.title = "Patología vulvar: el dolor de cabeza para el ginecólogo."
    item6_21.room = "1"
    item6_21.duration = 90
    item6_21.schedule = "9:30 – 11:00 hrs."
    item6_21.days = "Lunes, 6 de noviembre 2017"
    
    let item6_22 = ProgramItem()
    item6_22.catId = 6
    item6_22.title = "Anticoncepción en la adolescencia."
    item6_22.room = "3"
    item6_22.duration = 90
    item6_22.schedule = "9:30 – 11:00 hrs."
    item6_22.days = "Lunes, 6 de noviembre 2017"
    
    let item6_23 = ProgramItem()
    item6_23.catId = 6
    item6_23.title = "Estrategias efectivas para la reducción de la muerte materna y perinatal."
    item6_23.room = "5"
    item6_23.duration = 90
    item6_23.schedule = "9:30 – 11:00 hrs."
    item6_23.days = "Lunes, 6 de noviembre 2017"
    
    let item6_24 = ProgramItem()
    item6_24.catId = 6
    item6_24.title = "Temas de consenso FLASOG en cirugía mínimamente invasiva.      "
    item6_24.room = "6"
    item6_24.duration = 90
    item6_24.schedule = "9:30 – 11:00 hrs."
    item6_24.days = "Lunes, 6 de noviembre 2017"

    items[6].items.append(item6_1)
    items[6].items.append(item6_2)
    items[6].items.append(item6_3)
    items[6].items.append(item6_4)
    items[6].items.append(item6_5)
    items[6].items.append(item6_6)
    items[6].items.append(item6_7)
    items[6].items.append(item6_8)
    items[6].items.append(item6_8)
    items[6].items.append(item6_9)
    items[6].items.append(item6_10)
    items[6].items.append(item6_11)
    items[6].items.append(item6_12)
    items[6].items.append(item6_13)
    items[6].items.append(item6_14)
    items[6].items.append(item6_15)
    items[6].items.append(item6_16)
    items[6].items.append(item6_17)
    items[6].items.append(item6_18)
    items[6].items.append(item6_19)
    items[6].items.append(item6_20)
    items[6].items.append(item6_21)
    items[6].items.append(item6_22)
    items[6].items.append(item6_23)
    items[6].items.append(item6_24)
    
    
    //****************      Foros de discusión  ********************
    let item7_1 = ProgramItem()
    item7_1.catId = 7
    item7_1.title = "Rutas de suministro y límites de la TMH; cuando los estudios clínicos no aplican"
    item7_1.room = "4"
    item7_1.duration = 75
    item7_1.schedule = "11:15 – 12:30 hrs."
    item7_1.days = "Lunes, 6 de noviembre 2017"
    
    let item7_2 = ProgramItem()
    item7_2.catId = 7
    item7_2.title = "Manejo conservador de preclampsia severa"
    item7_2.room = "3"
    item7_2.duration = 75
    item7_2.schedule = "11:15 – 12:30 hrs."
    item7_2.days = "Lunes, 6 de noviembre 2017"
    
    let item7_3 = ProgramItem()
    item7_3.catId = 7
    item7_3.title = "Obstetricia crítica"
    item7_3.room = "1"
    item7_3.duration = 75
    item7_3.schedule = "11:15 – 12:30 hrs."
    item7_3.days = "Lunes, 6 de noviembre 2017"
    
    let item7_4 = ProgramItem()
    item7_4.catId = 7
    item7_4.title = "Manejo laparoscópico o abierto: prolapso vaginal/miomas"
    item7_4.room = "6"
    item7_4.duration = 75
    item7_4.schedule = "11:15 – 12:30 hrs."
    item7_4.days = "Lunes, 6 de noviembre 2017"
    
    let item7_5 = ProgramItem()
    item7_5.catId = 7
    item7_5.title = "Cesárea: de una intervención salvadora a un problema de salud pública"
    item7_5.room = "5"
    item7_5.duration = 75
    item7_5.schedule = "11:15 – 12:30 hrs."
    item7_5.days = "Lunes, 6 de noviembre 2017"
    
    let item7_6 = ProgramItem()
    item7_6.catId = 7
    item7_6.title = "Cirugía reproductiva y fertilización in vitro, ¿complementarios u opuestos?"
    item7_6.room = "4"
    item7_6.duration = 75
    item7_6.schedule = "11:15 – 12:30 hrs."
    item7_6.days = "Lunes, 6 de noviembre 2017"
    
    let item7_7 = ProgramItem()
    item7_7.catId = 7
    item7_7.title = "RCIU: puntos clave para la toma de decisiones"
    item7_7.room = "3"
    item7_7.duration = 75
    item7_7.schedule = "11:15 – 12:30 hrs."
    item7_7.days = "Lunes, 6 de noviembre 2017"
    
    let item7_8 = ProgramItem()
    item7_8.catId = 7
    item7_8.title = "Morbilidad materna extrema"
    item7_8.room = "5"
    item7_8.duration = 75
    item7_8.schedule = "11:15 – 12:30 hrs."
    item7_8.days = "Lunes, 6 de noviembre 2017"
    
    let item7_9 = ProgramItem()
    item7_9.catId = 7
    item7_9.title = "Diagnóstico fetal invasivo "
    item7_9.room = "1"
    item7_9.duration = 75
    item7_9.schedule = "11:15 – 12:30 hrs."
    item7_9.days = "Lunes, 6 de noviembre 2017"
    
    let item7_10 = ProgramItem()
    item7_10.catId = 7
    item7_10.title = "Avances en salud de la mujer a la luz de los objetivos de desarrollo sostenible"
    item7_10.room = "10"
    item7_10.duration = 75
    item7_10.schedule = "11:15 – 12:30 hrs."
    item7_10.days = "Lunes, 6 de noviembre 2017"
    
    let item7_11 = ProgramItem()
    item7_11.catId = 7
    item7_11.title = "Mallas vs cirugía tradicional en el manejo del prolapso"
    item7_11.room = "5"
    item7_11.duration = 75
    item7_11.schedule = "11:15 – 12:30 hrs."
    item7_11.days = "Lunes, 6 de noviembre 2017"
    
    let item7_12 = ProgramItem()
    item7_12.catId = 7
    item7_12.title = "Vía de nacimiento en el siglo xxi"
    item7_12.room = "4"
    item7_12.duration = 75
    item7_12.schedule = "11:15 – 12:30 hrs."
    item7_12.days = "Lunes, 6 de noviembre 2017"
    
    let item7_13 = ProgramItem()
    item7_13.catId = 7
    item7_13.title = "Diagnóstico y tratamiento del cáncer ginecológico."
    item7_13.room = "6"
    item7_13.duration = 75
    item7_13.schedule = "11:15 – 12:30 hrs."
    item7_13.days = "Lunes, 6 de noviembre 2017"
    
    let item7_14 = ProgramItem()
    item7_14.catId = 7
    item7_14.title = "Condiciones superpuestas de dolor pélvico crónico: caso clínico interactivo"
    item7_14.room = "1"
    item7_14.duration = 75
    item7_14.schedule = "11:15 – 12:30 hrs."
    item7_14.days = "Lunes, 6 de noviembre 2017"
    
    let item7_15 = ProgramItem()
    item7_15.catId = 7
    item7_15.title = "Análisis crítico de la anticoncepción en la etapa de transición a la menopausia"
    item7_15.room = "3"
    item7_15.duration = 75
    item7_15.schedule = "11:15 – 12:30 hrs."
    item7_15.days = "Lunes, 6 de noviembre 2017"
    
    let item7_16 = ProgramItem()
    item7_16.catId = 7
    item7_16.title = "Mejorando el pronóstico reproductivo en la mujer con problema de fertilidad"
    item7_16.room = "5"
    item7_16.duration = 75
    item7_16.schedule = "11:15 – 12:30 hrs."
    item7_16.days = "Lunes, 6 de noviembre 2017"
    
    let item7_17 = ProgramItem()
    item7_17.catId = 7
    item7_17.title = "Principales biomarcadores para preeclampsia. Aplicación clínica y practica"
    item7_17.room = "1"
    item7_17.duration = 75
    item7_17.schedule = "11:15 – 12:30 hrs."
    item7_17.days = "Lunes, 6 de noviembre 2017"
    
    let item7_18 = ProgramItem()
    item7_18.catId = 7
    item7_18.title = "Inmunización materna (vacunas)"
    item7_18.room = "3"
    item7_18.duration = 75
    item7_18.schedule = "11:15 – 12:30 hrs."
    item7_18.days = "Lunes, 6 de noviembre 2017"
    
    let item7_19 = ProgramItem()
    item7_19.catId = 7
    item7_19.title = "Progesterona, pesarios y prematuridad"
    item7_19.room = "4"
    item7_19.duration = 75
    item7_19.schedule = "11:15 – 12:30 hrs."
    item7_19.days = "Lunes, 6 de noviembre 2017"
    
    let item7_20 = ProgramItem()
    item7_20.catId = 7
    item7_20.title = "Estado del arte del cáncer ginecológico en Latinoamérica y el Caribe"
    item7_20.room = "6"
    item7_20.duration = 75
    item7_20.schedule = "11:15 – 12:30 hrs."
    item7_20.days = "Lunes, 6 de noviembre 2017"

    
    items[7].items.append(item7_1)
    items[7].items.append(item7_2)
    items[7].items.append(item7_3)
    items[7].items.append(item7_4)
    items[7].items.append(item7_5)
    items[7].items.append(item7_6)
    items[7].items.append(item7_7)
    items[7].items.append(item7_8)
    items[7].items.append(item7_9)
    items[7].items.append(item7_10)
    items[7].items.append(item7_11)
    items[7].items.append(item7_12)
    items[7].items.append(item7_13)
    items[7].items.append(item7_14)
    items[7].items.append(item7_15)
    items[7].items.append(item7_16)
    items[7].items.append(item7_17)
    items[7].items.append(item7_18)
    items[7].items.append(item7_19)
    items[7].items.append(item7_20)
    
    
    items = fillDesc(items: items)
    
    return items
    
    
}

func fillDesc(items:[ProgramCat]) -> [ProgramCat]{
    
    //****************      Cursos Precongreso  ********************
     items[0].items[0].desc = """
    Objetivo General:
    Clarificar y exponer conceptos basados en evidencia con aplicabilidad inmediata al afrontar una emergencia secundaria a hemorragia obstétrica.
    
    Objetivos Específicos:
    Exponer metodologías de manejo actuales de acuerdo a lineamientos nacionales e internacionales.
    Demostrar dos intervenciones validadas y sencillas, pero de alto impacto en el manejo de la hemorragia obstétrica.
    Conocer diferentes técnicas quirúrgicas de alta complejidad para manejos avanzados.
    
    Profesor Titular:
    Dr. Paulo Meade Treviño
    
    Profesores Adjuntos:
    Dr. Francisco Javier Robles Elías
    Dr. Javier Andres Carvajal Valencia
    
    PROGRAMA
    
    8:00 – 8:10 hrs.
    Bienvenida y panorama del precongreso Dr.  Paulo Meade Treviño
    
    8:10 – 8:40 hrs.
    Manejo de choque hemorrágico por metas
    Dr. Javier Andrés Carvajal Valencia
     
    8:40 – 9:20 hrs.
    Índice de choque- papel como predictor de resultados maternos
    Dr. Héctor Bolatti
     
    9:20 – 10:10 hrs.
    Capacitación con simuladores. Alcances y limitaciones
    Dr. Heriberto Lizaola
     
    10:10 – 10:40 hrs.
    RECESO
     
    10:40 – 11:20 hrs.
    Balones hidrostáticos intrauterinos. Técnica y demostración interactiva.
    Dr. Francisco Javier Robles Elías
     
    11:20 – 12:10 hrs.
    Manejo quirúrgico. Técnicas conservadoras compresivas y vasculares
    Dr. Emigdio Torres Farías
     
    12:10 – 12:40 hrs.
    RECESO
    
    12:40 – 13:10 hrs.
    Estrategia emergente - traje antichoque no neumático. Evidencia, técnica y demostración interactiva.
    Dr. Paulo Meade Treviño
     
    13:10 – 13:40 hrs.
    Acretismo. El gran reto. Protocolo diagnóstico y de abordaje.
    Dr. Emigdio torres Farías
     
    13:40 – 14:00 hrs.
    Preguntas y Conclusiones
    """
    
    items[0].items[1].desc = """
    Objetivo General:
    En las últimas dos décadas en el área de oncología ginecológica ha habido un avance importante en el conocimiento de la biología de los tumores, actualmente han madurado conceptos hasta convertirse en un área de oportunidad para desarrollar disciplinas y destrezas amplias y diversas, para poder suministrar una mejor salud a nuestras pacientes.
     
    Objetivos Específicos:
    Dar información como incorporar estudios clínicos de la rutina diaria a la práctica del ginecólogo oncólogo.
    Conocer el estado actual del ganglio centinela en el cáncer ginecológico, cirugías con robot y manejo de recurrencia en las diferentes neoplasias.
    Tener un amplio panorama en las diferentes opciones actuales en la cirugía reconstructiva y nuevas terapias blanco.
    
    Profesor Titular:
    Dr. Carlos Aranda flores 
    Profesores Adjuntos: Dr. Juan Carlos Cantón
    Dr. Diego Habich
    
    PROGRAMA
    
    8:00 - 8:10 hrs.
    Introducción.
    Dr. Carlos Aranda Flores
    
    8:10 - 8:30 hrs.
    Nuevos paradigmas en la detección de cáncer cervicouterino. (autónoma)
    Dr. Carlos Aranda Flores
    
    8:30 - 9:00 hrs.
    Traquelectomía: Indicaciones y resultados
    Dr. Juan Carlos Cantón
    
    9:00 - 9:30 hrs.
    Marcadores tumorales en cáncer ginecológico ¿Cuándo y a quién?
    Dr. Arnulfo Martínez Chapa
    
    9:30 – 10:00 hrs.
    Consenso de cáncer de ovario ¿Tiene consecuencias en la práctica clínica?
    Dr. Valentín Jaimes
    
    10:00 – 10:10 hrs.
    Mesa de discusión
    Coordina: Dr. Carlos Aranda Flores
    
    10:10 – 10:30 hrs.
    RECESO 
    10:30 – 11:00 hrs.
    Cáncer de endometrio ¿Se puede prevenir?
    Dr. Arnulfo Martínez Chapa
    
    11:00 – 11:30 hrs.
    Tratamiento conservador en cáncer de endometrio. Controversias
    Dr. Diego Habich
    
    11:30 – 12:00 hrs.
    Cirugía incompleta hallazgo incidental
    Dr. Emilio Olaya Guzmán
    
    12:00 – 12:10 hrs.
    Mesa de discusión.
    Coordina: Dr. Emilio Olaya Guzmán
    
    12:10 – 12:30 hrs.
    RECESO 
    12:30 – 13:00 hrs.
    Ganglio centinela en cáncer ginecológico. Mito o realidad
    Dr. Juan Carlos cantón
    
    13:00 – 13:30 hrs.
    Cirugía residual tumoral
    Dr. Valentín Jaimes
    
    13:30 – 13:50 hrs.
    Cirugía de rescate. Peritonectomía pros y contras
    Dr. Antonio Santillán Gómez
    
    13:50 – 14:00 hrs.
    Mesa de discusión
    Dr. Juan Carlos Cantón

    """
    items[0].items[2].desc = """
    Objetivo General:
    Actualizar los conceptos, el diagnóstico y manejo de vanguardia para la mejor atención de las mujeres en las etapas de transición a la menopáusica, perimenopausia y posmenopausia.
    
    Objetivos Específicos:
    Conocer los cambios fisiológicos, la sintomatología y la patología que se presentan durante el climaterio asociadas al proceso de envejecimiento y a la declinación de la producción de hormonas sexuales.
    Conocer los métodos de diagnóstico, identificar los factores de riesgo, así como las medidas preventivas y el manejo de la patología más común en estas etapas de la vida.
    Identificar los tratamientos médicos para las condiciones más comunes en estas etapas de la vida.
    Reconocer los riesgos y beneficios de la terapia hormonal en la menopausia (TMH) así como y otras alternativas terapéuticas.
    
    Profesor titular:
    Dr. Cuauhtémoc Celis González
    Profesores adjuntos:
    Dr. José de Jesús Montoya Romero
    Dr. Alejandro Paradas Caba
    
    PROGRAMA
    
    8:00 – 8:10 hrs.
    Introducción y objetivos
    Dr.  Cuauhtémoc Celis González
    
    8:10 – 8:40 hrs.
    Straw y comorbilidades asociadas
    Dr. Imelda Hernández Marín
    
    8:40 – 9:10 hrs.
    Síndrome vasomotor: manejo hormonal y no hormonal
    Dr. José de Jesús Montoya Romero
    
    9:10 – 9:40 hrs.
    Efectos de los estrógenos y progestágenos en el S.N.C
    Dr. Andrea Riccardo Genazanni
    
    9:40 – 10:10 hrs.
    De la practica a la evidencia científica en el uso de los “compuestos hormonales”
    Dr. Juan de Dios Maldonado Alvarado
    
    10:10 – 10:40 hrs.
    RECESO
     
    10:40 – 11:10 hrs.
    Riesgo cardiometabólico en el climaterio
    Dr. Cynthia Stuenkel
    
    11:10 – 11:40 hrs.
    Glándula mamaria y TMH
    Dr. Alejandro Paradas Caba
    
    11:40 – 12:10 hrs.
    Consideraciones de la sexualidad en el climaterio
    Dra.  Alessandra Graziottin
    
    12:10 – 12:40 hrs.
    RECESO
     
    12:40 – 13:10 hrs.
    Evaluación objetiva de la rutas y dosis de suministro hormonal
    Dr. Néstor Siseles
    
    13:10 – 13:40 hrs.
    Consensos actuales sobre TMH
    Dr. Cuauhtémoc Celis González
    
    
    13:40 – 14:00 hrs.
    Discusión coordinada
    Dr. Carlos Moran Villota

    """
    
    items[0].items[3].desc = """
    Objetivo General:
    Proporcionar a los Gineco-Obstetras una revisión de la incidencia, factores de riesgo sintomatología, manejo médico, implicaciones materno-fetales y aspectos educativos para las pacientes de las principales complicaciones médicas que afectan a las mujeres durante los periodos anteparto, intraparto y postparto.
    
    Objetivos Específicos:
    Reconocer la patología médica gestacional más frecuente en américa latina
    Describir la incidencia y los factores de riesgo de las complicaciones más comunes
    Poder identificar signos y síntomas de las embarazadas afectadas por patologías
    Discutir el manejo médico de estas patologías y describir las implicaciones maternas y fetales.
    
    Profesor Titular:
    Dr. Rodrigo Zamora Escudero
    
    Profesor Adjunto: Dr. Ernesto Barrios Prieto
    
    PROGRAMA
    
    8:00 – 8:10 hrs.
    Introducción y objetivos
    Dr. Rodrigo Zamora Escudero Dr. Ernesto barrios prieto
    
    8:10 – 8:40 hrs.
    Diagnóstico y manejo de diabetes gestacional
    Dr. Vincenzo Berghella
    
    8:40 – 9:10 hrs.
    Manejo interdisciplinario de zika y embarazo
    Dr. Norberto reyes paredes
    
    9:10 – 9:40 hrs.
    Perlas en el manejo de la obesidad y embarazo
    Dr. Francisco Rafael Guadarrama Sánchez
    
    9:40 – 10:10 hrs.
    Errores en el manejo de las infecciones urinarias en la gestación
    Dr. José Tirán Saucedo
    
    10:10 - 10:40 hrs.
    RECESO
    
    10:40 – 11:10 hrs.
    Epidemia de nuestro tiempo: nefropatía y embarazo
    Dr. Rodrigo Zamora Escudero
    
    11:10 – 11:40 hrs.
    Hipertensión crónica en el embarazo: hacer o no hacer
    Dr. Baha M. Sibai
    
    11:40 – 12:10 hrs.
    Manejo de las embarazadas con preeclampsia sin datos de gravedad
    Dr. Ernesto Ramos Prieto
    
    12:10 – 12:40 hrs.
    RECESO
    
    12:40 – 13:10 hrs.
    Enfermedad periodontal y embarazo: Una antigua relación, una nueva mirada.
    Dr. Sebastián Illanes
    
    13:10 – 13:40 hrs.
    Prevención y manejo de tromboembolismo en el embarazo y puerperio
    Dr. Fernando Romero Arauz
    
    13:40 – 14:00 hrs.
    Preguntas y conclusiones
    Dr. Pendiente

    """
    
    items[0].items[4].desc = """
    Objetivo General:
    Revisar conceptos actuales de problemas que, en nuestra práctica, representan de suyo un reto diagnóstico y/o terapéutico
    
    Objetivos Específicos:
    Repasar los conceptos actuales en lo que a fisiopatología se refiere de la temática suscrita.
    Entender las mejores opciones de tecnología que podrán ser utilizadas para el esclarecimiento del origen de la patología.
    Sustentar, basados en la evidencia, la mejor opción terapéutica planteada para el manejo del problema descrito.
    
    Profesor Titular:
    Dr. Francisco Bernárdez zapata
    
    Profesores Adjuntos:
    Dr.  Gilberto Tena Alavés
    Dr.  Francisco Ruiloba Madero
    
    PROGRAMA
    
    8:00 – 8:10 hrs.
    Introducción y objetivos
    Dr. Francisco José Bernárdez Zapata
    
    8:10 – 8:40 hrs.
    Mola parcial con feto vivo. El que hacer fundamentado en la evidencia.
    Dr. Francisco Javier Ruiloba Madero
    
    8:40 – 9:10 hrs.
    Síndrome de inflamación fetal. De la teoría a la práctica.
    Dr. Ernesto Castelazo Morales
    
    
    9:10 – 9:40 hrs.
    Parálisis cerebral infantil. ¿Es posible su prevención?
    Dr.  Haywood Brown
    
    9:40 – 10:10 hrs.
    Qué es la epigenética y cómo influye la nutrición.
    Dr. Francisco José Bernárdez Zapata
    
    10:10 – 10:40 hrs.
    RECESO 
    10:40 – 11:10 hrs.
    Trombocitopenia en el embarazo. Actualidades
    Dr. Gilberto tena Alavés
    
    11:10 – 11:40 hrs.
    Vulvodinea en la práctica clínica. ¿Qué hacer?
    Dr. Miguel Ambás Arguelles.
    
    11:40 – 12:10 hrs.
    Dolor pélvico crónico. ¿siempre es endometriosis?
    Dr. Luis Carlos Uribe
    
    12:10 – 12:40 hrs.
    RECESO
    
    12:40 -13:10 hrs.
    Bases moleculares de la osteoporosis. Entendiendo su manejo
    Dr. Armando Montaño
    
    13:10 - 13:40 hrs.
    Terapia hormonal y las probabilidades de cáncer.
    Dr. Verda Hiks
    
    13:40 – 14:00 hrs.
    Preguntas y conclusiones
    Dr. Francisco José Bernárdez Zapata

    """

    items[0].items[5].desc = """
    Objetivo General:
    Revisar y manejar las causas más comunes asociadas a morbilidad y mortalidad materna
    
    Objetivos Específicos:
    Evaluar las intervenciones más efectivas en la reducción de la mortalidad materna
    Insistir en el concepto de near miss y su importancia en muertes maternas
    Hacer una descripción sobre la realidad en muertes maternas y morbilidad severa en latino américa.
    
    Profesor Titular: Dr. Douglas Jarquin
    
    Profesores Adjuntos:
    Dra. María Fernanda Escobar Dra. Wendy Cárcamo.
    
    8:00 a 8:10 hrs.
    Introducción y objetivos
    Dr. Douglas Jarquin
    
    8:10 a 8:40 hrs.
    Intervenciones a fortalecer en américa latina para reducir la muerte materna. La agenda pendiente.
    Dr. Edgar Iván Ortiz
    
    8:40 a 9:10 hrs.
    Anticoncepción como estrategia primaria para reducir la mortalidad materna
    Dr. Jorge Méndez Trujeque
    
    9:10 a 9:40 hrs.
    Educación para el mejoramiento de la atención de la emergencia obstétrica
    Dr. Mauricio Vasco
    
    9:40 a 10:10 hrs.
    Near miss como un indicador de seguridad y calidad en la atención obstétrica
    Dr. Douglas Jarquin
    
    10:10 – 10:40 hrs.
    RECESO 
    10:40 a 11:10 hrs.
    Modelo de seguridad para la atención de las emergencias obstétricas
    Dr. Edgar Iván Ortiz
    
    11:10 a 11:40 hrs.
    Estrategias efectivas para la reducción de la tasa de cesárea
    Dr. Sergio Fajardo
    
    11:40 a 12:10 hrs.
    Morbilidad y mortalidad perinatal en américa latina: ¿Dónde estamos?
    Dra. Wendy Cárcamo
    
    12:10 – 12:40 hrs.
    RECESO
         
    12:40 a 13:10 hrs.
    Estrategias del control prenatal para mejorar la salud neonatal.
    Dr. Héctor Bollatti
    
    13:10 a 13:40 hrs.
    Estrategias exitosas para la reducción de la mortalidad materna FLASOG: Manejo de la HPP, experiencia exitosa: Alto - Bolivia - Guatemala
    Dr. Carlos Fütchner
    
    13:40 a 14:00 hrs.
    Preguntas y conclusiones
    Dr. Pendiente

    """

    items[0].items[6].desc = """
    Objetivo General:
    Evaluar las principales patologías o complicaciones asociadas con la alteración de la fertilidad según las evidencias.
     Objetivos Específicos:
    Presentar la evaluación general y manejo actual de la pareja infértil.
    Enfocarse en las complicaciones más frecuente y cómo manejarla para mejorar la fertilidad.
    Evaluar el uso de drogas para el manejo de la pareja infertilidad.
     Profesor Titular: Dra. Ivonne Díaz
     Profesores Adjuntos: Dr. Roberto Epifanio
    Dr. Ricardo Pommer
    
    PROGRAMA
    
    8:00 – 8:10 hrs.
    Introducción
    Dra.  Ivonne Díaz
    
    8:10 – 8:40 hrs.
    Enfoque actual de la pareja infértil
    Dr.  Ricardo Pommer  
    8:40 – 9:10 hrs.
    Evaluación de la reserva ovárica
    Dr. Roberto Epifanio
    
    9:10 – 9:40 hrs.
    Endometriosis e infertilidad: evidencia actual.
    Dra.  Ivonne Díaz
    
    9:40 – 10:10 hrs.
    Miomatosis e infertilidad. Evidencia actual.
    Dr. Miguel Ángel mancera Reséndiz 
    10:10 – 10:40 hrs.
    RECESO
     
    10:40 – 11:10 hrs.
    Hidrosalpinx evaluación y manejo.
    Dr.  Henry Mateos Sanez 
    11:10 – 11:40 hrs.
    Uso de medicamentos coadyudantes en inducción de ovulación y su utilidad actual.
    Dr.  Ricardo Pommer
    
    11:40 – 12:10 hrs.
    Utilidad de la progesterona en fertilidad.
    Dra.  Ivonne Díaz
     
    12:10 – 12:40 hrs.
    RECESO
         
    12:40 – 13:10 hrs.
    Inducción de ovulación en SOP en baja complejidad.
    Dr.  Ricardo Pommer
    
    13:10 – 13:40 hrs.
    Inducción de ovulación en bajas respondedoras.
    Dr.  Roberto Epifanio
    
    13:40 – 14:00 hrs.
    Preguntas y conclusiones
    Dra. Ivonne Díaz
    """
    
    items[0].items[7].desc = """
    Objetivo General:
    Revisar el estado de los derechos sexuales y reproductivos (DSR) en la región
     Objetivos Específicos:
    Conocer los avances y retrocesos regionales, así como las experiencias exitosas en el avance de los DSR en Uruguay y Ecuador.
    Reflexionar sobre los DSR desde la perspectiva jurídica y clínica.
    Conocer herramientas de evaluación de la calidad de servicios.
     Profesor Titular: Dr. Pio Iván Gómez
     Profesores Adjuntos: Dr. Leonel Briozzo Dr. Octavio Miranda
    
    PROGRAMA 
    8:00 – 8:10 hrs.
    Introducción y objetivos.
    Dr. Pio Iván Gómez 
    8:10 – 8:40 hrs.
    Estado de los derechos sexuales y reproductivos en la región.
    Dr.  Pio Iván Gómez
    
    8:40 – 9:10 hrs.
    Derechos sexuales y reproductivos en la práctica clínica.
    Dra. Lida Sosa
    
    9:40 – 10:10 hrs.
    El derecho a la vida desde la concepción y los derechos reproductivos.
    Lic. Mónica Roa
    
    10:10 – 10:40 hrs.
    RECESO
     
    10:40 – 11:10 hrs.
    Del modelo de reducción de riesgo y daño a la despenalización del aborto, el modelo uruguayo por los derechos de la mujer.
    Dr.  Leonel Briozzo
    
    11:10 – 11:40 hrs.
    Optimizando roles de los prestadores de atención en salud materna y salud reproductiva.
    Dr. Joao Paulo Souza
    
    11:40 – 12:10 hrs.
    Formación de líderes sobre derechos sexuales y reproductivos en el ecuador.
    Dr. Octavio Miranda
     
    12:10 – 12:40 hrs.
    RECESO
         
    12:40 – 13:10 hrs.
    Las ventajas de usar mifepristona con misoprostol para la evacuación uterina.
    Dra. Beverly Winikoff
    
    13:10 – 13:40 hrs.
    RED CLAP MUSA SIP A: una herramienta para evaluar calidad de asistencia a mujeres en situación de aborto en américa latina y el caribe.
    Dr. Rodolfo Gómez Ponce de León
    
    13:40 – 14:00 hrs.
    Preguntas y conclusiones
    Dr. Pendiente

    """
    
    items[0].items[8].desc = """
Objetivos Generales:
Revisar las causas más comunes de consulta en ginecología del adolescente.
 Objetivos Específicos:
Enfatizar el manejo interdisciplinario y diferenciado de cada una de las patologías tratadas en la adolescencia.
Hacer énfasis en las repercusiones bio-psico-sociales de cada entidad en la salud adolescente
Presentar las repercusiones en el ámbito reproductivo de patologías diagnosticadas en la adolescencia.
 Profesor Titular: Dra. Margarita Castro
 Profesores Adjuntos: Dr. Jorge Peláez
Dra. Angélica Vargas

PROGRAMA

8:00 – 8:10 hrs.
Introducción y objetivos
Dra. Margarita Castro 

8:10 – 8:40 hrs.
Inicio precoz de la actividad sexual y aborto durante la adolescencia. Implicaciones a la salud reproductiva.
Dr. Jorge Peláez 
8:40 – 9:10 hrs.
Embarazo en la adolescencia. Del afecto a la maternidad.
Dr. José Vidal Sáenz 
9:10 – 9:40 hrs.
Infecciones de transmisión sexual en adolescentes.
Dra. Miriam Negrín

9:40 – 10:10 hrs.
Virus del papiloma humano y su impacto. Rol de las vacunas.
Dra. Gricel Valerio

10:10 – 10:40 hrs.
RECESO
 
10:40 – 11:10 hrs.
Trastornos menstruales: cuándo, cómo y por qué tratarlos.
Dra. Juana Serret

11:10 – 11:40 hrs.
Síndrome de ovario poliquístico, ¿hay una definición aplicable al adolescente?
Dr.  Raúl Bermúdez

11:40 – 12:10 hrs.
Enfoque diagnóstico y manejo del hirsutismo en la adolescencia
Dra. Marisa Labovsky
 
12:10 – 12:40 hrs.
RECESO
     
12:40 – 13:10 hrs.
Enfoque diagnóstico y manejo de la ambigüedad sexual en la adolescencia.
Dra. Angélica Vargas

13:10 – 13:40 hrs.
Patología mamaria en la adolescencia.
Dra. María mercedes Pérez

13:40 – 14:00 hrs.
Adolescencia y obesidad
Dr. Andrés Zamora

14:00 hrs.
Preguntas y conclusiones
Dra. Margarita castro
"""
    
    items[0].items[9].desc = """
    Objetivos Específicos:
    Análisis sobre los factores de riesgo y como intervenir en ellos.
    Descripción sobre el cuello uterino y efecto de drogas como la progesterona
    Que debemos conoce del cerclaje, pesario, progesterona y tocolíticos en prematuridad. 
    Profesor Titular: Dr. Eduardo Da Fonseca
     Profesores Adjuntos: Dra. Catalina Valencia
    Dr. Renato Moreira Sá
    
    PROGRAMA
    
    8:00 – 8:10 hrs.
    Introducción y objetivos Dr. Eduardo Da Fonseca 
    8:10 – 8:40 hrs.
    Epidemiología y factores de riesgo
    Dr. Gilberto Tena A.
    
    8:40 – 9:10 hrs.
    Definición y fisiopatología
    Dr. Ana Bianchi
    
    9:10 – 9:40 hrs.
    El cuello uterino y la progesterona Dr. Eduardo Da Fonseca
    
    9:40 – 10:10 hrs.
    Cercalge vs progesterona para prevenir parto prematuro
    Dr. Vicenzo Berguella
    
    10:10 – 10:40 hrs.
    Pesario cervical para prevenir el parto prematuro en singleton y gemelos: ¿Dónde estamos?
    Dra. Catalina Valencia 
    10:40 – 11:10 hrs.
    RECESO
    
    11:10 – 11:40 hrs.
    Diagnóstico clínico: Nuevas herramientas para evitar intervenciones innecesarias Dra. Juliana Esteves
    
    11:40 – 12:10 hrs.
    Tocolísis y esteroides repetidos: Evaluación crítica Dr. Renato Moreira Sá
    
    12:10 – 12:40 hrs.
    RECESO
    
    
    12:40 – 13:10 hrs.
    Sulfato de magnesio para la neuroprotección fetal y SGB: Control y conducta
    Dr. Rogelio Cruz
    
    13:10 – 13:40 hrs.
    Mesa de discusión
    Todos los profesores
    
    
    13:40 – 14:00 hrs.
    Preguntas y conclusiones
    Dr. Eduardo Da Fonseca

    """
    
    
    //****************      Cursos Transcongreso  ********************
    
    
items[1].items[0].desc = """
Objetivo General:
El asistente conocerá el alcance del ultrasonido como herramienta en el área de la obstetricia, para realizar diagnóstico oportuno y determinar el pronóstico puntual de las diversas complicaciones del embarazo y la repercusión de la morbimortalidad perinatal.

Objetivos Específicos:
Identificar las imágenes y conceptos relevantes en la predicción de alteraciones génicas, estructurales y complicaciones del embarazo   en las etapas iniciales del embarazo.
Determinar el manejo integral de las diferentes complicaciones del embarazo basado en el seguimiento sonográfico para disminuir los riesgos de morbimortalidad perinatal.

Profesor Titular: Dr. José Antonio Ayala Méndez
 Profesores Adjuntos: Dra. Ana Nianchi Dra. Yolitzma Muciño Rodríguez

Primer día (lunes, 6 de noviembre): “La ventana diagnóstica de primer trimestre” 
7:00 – 7:05 hrs.
Introducción y bienvenida – Dr. José Antonio Ayala Méndez
7:05 – 7:30 hrs. Predicción de complicaciones del embarazo - Dr. Salvador Espino
7:30 – 7:55 hrs. Predicción de parto pretérmino – Dr. Vincenzo Berghella 7:55 – 8:20 hrs.  Uso práctico del US Doppler en obstetricia – Dr. Giancarlo Mari
8:20 – 8:45 hrs. Pruebas alternativas y confirmatorias en el primer trimestre – Dr. Mónica Aguinaga Ríos
8:45 – 9:00hrs. Preguntas y conclusiones – Dr. José Antonio Ayala Méndez

Segundo día (martes, 7 de noviembre):
“EVALUACIÓN ANTENATAL Y DEL SISTEMA NERVIOSO CENTRAL” 
7:00 – 7:05 hrs. Introducción y presentación – Dra. Yolitzma Muciño Manjarrez
7:05 – 7:30 hrs. La exploración estructural del segundo trimestre – Dr. Gerardo Sepúlveda González
7:30 – 7:55 hrs. Lineamientos en la revisión del sistema nervioso central – Dra. Yolitzma Muciño Manjarrez
7:55 – 8:20 hrs. Neurosonografía: indicaciones y utilidad diagnóstica – Dr. Antonio Méndez González
8:20 – 8:45 hrs. Aportes de la resonancia magnética más allá del ultrasonido – Dra. Carla Moreno García
8:45 – 9:00 hrs. Preguntas y conclusiones – Dra. Yolitzma Muciño Manjarrez

Tercer día (miércoles, 8 de noviembre) “ABORDAJE DE CARDIOPATÍAS CONGÉNITAS”

7:00 – 7:05 hrs. Introducción y presentación – Dra. Ana Bianchi
7:05 – 7:30 hrs. Tamizaje de cardiopatía congénitas – Dra. Verónica Aidé Hernández Muñoz
7:30 – 7:55 hrs. Diagnóstico y manejo de las arritmias – Dr. Alfonso Martínez
7:55 – 8:20 hrs. La ecocardiografía fetal – Dra. Ana Bianchi
8.20 – 8:45 hrs. Las cardiopatías congénitas complejas y su repercusión perinatal – Dr. Alfonso Martínez
8:45 – 9:00 hrs. Preguntas y conclusiones – Dra. Ana Bianchi

Cuarto día (jueves, 9 de noviembre) “MISCELÁNEAS”

7:00 – 7:05 hrs. Introducción y presentación – Dr. José Antonio Ayala Méndez
7:05 – 7:30 hrs. Diagnóstico temprano de la adherencia placentaria anormal – Dra. Yolitzma Muciño Manjarrez
7:30 – 7:55 hrs. Marcadores estructurales - Dra. Nancy Sierra Lozada
7:55 – 8:20 hrs. Restricción en el crecimiento intrauterino: diagnóstico y vigilancia – Dra. Olivia Sánchez Rodríguez
8:20 – 8:45 hrs. Embarazo múltiple: lineamientos de diagnóstico y vigilancia – Dr. Antonio Briseño Sainz
8:45 – 9:00 hrs. Preguntas y conclusiones – Dr. José Antonio Ayala Méndez

"""
items[1].items[1].desc = """
Objetivo General:
Mejorar las competencias del alumno en la práctica colposcópico y establecer uniformidad en las normas nacionales e internacionales de la práctica colposcópica.
 Objetivos Específicos:
Conocer los cambios y/o hallazgos colposcópicos que se presentan en las diferentes regiones del TGI correlacionándolos con la citología e histología.
Poder identificar los factores de riesgo más importantes para las lesiones pre malignas y malignas del TGI.
Seleccionar e interpretar correctamente las pruebas de laboratorio, moleculares y apropiadas.
Definir el tipo de tratamiento apropiado para cada caso en particular.

Profesor Titular: Dr. David Eduardo Muñoz González
 Profesores Adjuntos: Dr. Rafael Bedoya
Dr. Eduardo Barragán Curiel

Primer día (lunes, 6 de noviembre)
SESIÓN INTERACTIVA “COLPOSCOPIA DIAGNOSTICA” 
7:00 – 7:05 hrs. Introducción – Dr. David E. Muñoz González.
7:05 – 7:30 hrs. Futuro de la citología ginecológica en la era molecular – Dr. Eduardo Barragán Curiel
7:30 – 7:55 hrs. Nuevos marcadores moleculares en histología – Dr. Gustavo Ferriro
7:55 – 8:20 hrs. Indicaciones clínicas para la prueba de VPH y vacunación – Dr. Lara Barragán
8:20 – 8:45 hrs. Inmunomoduladores, ¿vigentes? – Dr. Víctor Vargas Hernández
8:45 – 9:00 Preguntas y conclusiones – Dr. Rafael Bedolla

Segundo día (martes, 7 de noviembre)
SESIÓN INTERACTIVA “COLPOSCOPIA DIAGNOSTICA”

7:00 – 7:05 hrs. Introducción y bienvenida – Dr. David E. Muñoz González.
7:05 – 7:30 hrs. Adenocarcinoma in situ – Dr.  Juan Carlos Cantón
7:30 – 7:55 hrs. Carcinoma microinvasor – Dr. Gustavo Ferriro
7:55 – 8:20 hrs. Embarazo y NIC – Dr. Yolitzma Muciño Manjarrez
8:20 – 8:45 hrs. Colposcopia en siglo XXI, roll y futuro – Dr. Carlos Aranda Flores
8:45 – 9:00 hrs. Preguntas y conclusiones – Dr. David Eduardo Muñoz González

Tercer día (miércoles, 8 de noviembre)
SESIÓN INTERACTIVA “COLPOSCOPIA QUIRÚRGICA”

7:00 – 7:05 hrs. Introducción – Dr. David E. Muñoz González
7:05 – 7:30 hrs.  NIC ii “observar vs tratar” – Dr. Manuel Saenz Cabrera
7:30 – 7:55 hrs. NIVA, manejo quirúrgico vs láser – Dra. Elsa Díaz López
7:55 – 8:20 hrs. NIV tipos de escisiones quirúrgicas – Dr. David E. Muñoz González
8:20 – 8:45 hrs. Tratamiento de enfermedad multicéntrica – Dr. Víctor Vargas Hernández
8:45 – 9:00 hrs. Preguntas y conclusiones – Dr. Eduardo Barragán Curiel

Cuarto día (jueves, 9 de noviembre)
SESIÓN INTERACTIVA “COLPOSCOPIA SITUACIONES ESPECIALES” 
7:00 – 7:05 hrs. Introducción – Dr. David E. Muñoz González.
7:05 – 7:30 hrs. Colposcopia en climaterio y menopausia – Dr. Rafael Bedoya
7:30 – 7:55 hrs. Indicaciones manejo LIEAG del cérvix durante el embarazo – Dr. Eduardo Barragán Curiel
7:55 – 8:20 hrs. Nic en adolescentes ¿por qué son diferentes? – Dr. David E. Muñoz González
8:20 – 8:45 hrs. Anoscopia – Dr. Carlos Aranda Flores
8:45 - 9:00 hrs. Preguntas y conclusiones – Dr. Rafael Bedoya

"""
items[1].items[2].desc = """
Objetivo General:
Describir los avances tecnológicos y metodológicos para el estudio del feto mediante el ultrasonido y estudios genéticos.
 Objetivos Específicos:
Puntualizar las etapas y las pruebas de tamizaje para alteraciones cromosómicas.
Reconocer la importancia de los estudios genéticos para el estudio del feto con ciertas anomalías estructurales.
Describir algunas de las patologías fetales más frecuentes y los diferentes protocolos de abordaje.
Enfatizar la ventaja de un abordaje interdisciplinario para un mejor planteamiento y seguimiento de la patología fetal.

Profesor Titular:
Dra. Nancy Sierra Lozada
 Profesores Adjuntos: Dr. Juan Manuel Acuña
Dr. Pedro Mario Grimaldo Valenzuela

Primer día (lunes, 6 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y bienvenida – Dra. Nancy Sierra Lozada
7:05 – 7:30 hrs. Nuevas tecnologías en el tamiz prenatal no invasivo: incorporación del DNA fetal en la práctica diaria – Dr. Juan Manuel Acuña
7:30 – 7:55 hrs. Contribución del tamizaje bioquímico al ultrasonido en el resultado del tamiz de aneuploidias. – Dr. Gabriel Villagómez Martínez
7:55 – 8:20 hrs. Detección precoz de factores de riesgo pronósticos y de desarrollo anormal en     el embarazo múltiple. – Dra. Olivia Sánchez Rodríguez
8:20 – 8:45 hrs. Preeclampsia: Modelos de prevención y predicción en el primer trimestre – Dra. Sandra Acevedo Gallegos
8:45 – 9:00 hrs.  Preguntas y conclusiones – Dra. Nancy Sierra Lozada



Segundo día (martes, 7 de noviembre)
TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y presentación – Dr. Pedro Mario Grimaldo Valenzuela
7:05 – 7:30 hrs. Proyecto detección prenatal de cardiopatía congénita en México – Dra. Yazmín Copado Mendoza
7:30 – 7:55 hrs. Prioridades en el diagnóstico prenatal de cardiopatía para mejorar los resultados perinatales – Dra. Nancy Sierra Lozada
7:55 – 8:20 hrs. Experiencia en el abordaje interdisciplinario para el diagnóstico y manejo de las malformaciones congénitas. – Dra. María Teresa Leis Márquez
8:20 – 8:45 hrs. El impacto de la genómica en la genética perinatal actual – Dr. Juan Manuel Acuña
8:45 – 9:00 hrs. Preguntas y conclusiones – Dr. Pedro Mario Grimaldo Valenzuela

Tercer día (miércoles, 8 de noviembre)
TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y presentación – Dra. Nancy Sierra Lozada
7:05 – 7:30 hrs. Exploración de la fosa posterior: detección de patología y diagnósticos diferenciales. – Dr. Pedro Mario Grimaldo Valenzuela
7:30 – 7:55 hrs. Síndromes genéticos asociados con alteraciones en la fosa posterior. – Dra. Mónica Aguinaga Ríos
7:55 – 8:20 hrs. Repercusión del CMV congénito en el SNC. – Dr. Yves Ville
8:20 – 8:45 hrs. Abordaje actual en el diagnóstico por imagen de alteraciones del SNC – Dra. Carla Moreno García
8:45 – 9:00 hrs. Preguntas y conclusiones – Dra. Nancy Sierra Lozada

Cuarto día (jueves, 9 de noviembre)
TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y presentación – Dr. Pedro Mario Grimaldo Valenzuela
7:05 – 7:30 hrs. Alteraciones estructurales en el primer trimestre – Dra. Verónica Aidé Hernández Muñoz
7:30 – 7:55 hrs. Protocolo de estudio en el feto con masas eco génicas pulmonares – Dr. Antonio Méndez González
7:55 – 8:20 hrs. Ventrículomegalia fetal por ultrasonido: ¿cómo estudiarla? – Dr. Pedro Mario Grimaldo Valenzuela
8:20 – 8:45 hrs. Interpretación de imágenes ultrasonográficas de cardiopatía fetal – Dra. Yazmin Copado Mendoza
8:45 – 9:00 hrs. Preguntas y conclusiones – Dr. Pedro Grimaldo Valenzuela

"""
items[1].items[3].desc = """
Objetivo General:
Que el sub especialista presente al ginecólogo un análisis de los trastornos uroginecológicos más frecuentes que enfrentará en su práctica clínica y como abordarlos a la luz de la evidencia científica disponible y de su experiencia.
 Objetivos Específicos:
Presentar una guía para el abordaje clínico sistemático de la paciente con problemas uroginecológicos y de las indicaciones, utilidad y limitaciones de los estudios de urodinamia, imagen y cistoscopia.
Revisar el abordaje y manejo actual de los 4 problemas uroginecológicos de más difícil manejo por su recurrencia.
Discutir los métodos de diagnóstico, tratamiento y prevención de las lesiones urológicas asociadas a la cirugía ginecológica.
Analizar los efectos sobre el piso pélvico del embarazo y el parto, para revisar las intervenciones durante el trabajo de parto que pueden aumentar, disminuir o prevenir el daño al piso pélvico, describir el manejo interdisciplinario postparto para evaluar el daño al piso pélvico y sus alternativas de tratamiento y rehabilitación.

Profesor Titular: Dr. Luis Sentíes Cortina 
Profesores Adjuntos: Dr. Heriberto Lizaola Díaz de León
Dra. Erika Torres Valdez

Primer día (lunes, 6 de noviembre) “EVALUACIÓN DE LA PACIENTE CON TRASTORNOS UROGINECOLÓGICOS”

7:00 – 7:05 hrs. Introducción y bienvenida – Dr. Luis G. Sentíes Cortina
7:05 – 7:30 hrs. Evaluación clínica y pruebas de consultorio – Dr. Luis G. Sentíes Cortina
7:30 – 7:55 hrs. Urodinamia ¿a quién? ¿cuándo y qué? – Dr. Pablo Gutiérrez Escoto
7:55 – 8:20 hrs. Ultrasonido y estudios de imagen – Dr. Kristian Navarro Salomón
8:20 – 8:45 hrs. Cistoscopia – Dra. Erika Torres Valdez
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor

Segundo día (martes, 7 de noviembre)
PROBLEMAS RECURRENTES EN UROGINECOLOGÍA Y SU TRATAMIENTO 
7:00 – 7:05 hrs. Introducción y presentación – Dr. Heriberto Lizaola Díaz de León
7:05 – 7:30 hrs. Infección urinaria recurrente – Dra. Viridiana Gorbea Chávez
7:30 – 7:55 hrs. Vejiga hiperactiva – Dr. Heriberto Lizaola Díaz de León
7:55 – 8:20 hrs. Cistitis intersticial y dolor pélvico – Dra. Silvia Rodríguez Colorado
8:20 – 8:45 hrs. Prolapso recurrente – Dr. Willy Dávila
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor

Tercer día (miércoles, 8 de noviembre) “COMPLICACIONES UROLÓGICAS DE LA CIRUGÍA GINECOLÓGICA” 
7:00 – 7:05 hrs. Introducción y presentación – Dra. Erika Torres Valdez
7:05 – 7:30 hrs. Conducta ante la sospecha de lesión y confirmación diagnóstica – Dra. Erika Torres Valdez
7:30 – 8:00 hrs. Lesiones en cirugía laparoscópica y su abordaje – Dr. Kristian Navarro Salomón
7:55 – 8:20 hrs. Diagnóstico tardío, secuelas y su manejo – Dr. Eduardo Neri Ruz
8:20 – 8:45 hrs. Medidas preventivas útiles – Dra. Patricia Velázquez Castellanos
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor 
Cuarto día (jueves, 9 de noviembre)
“LESIONES OBSTÉTRICAS” 
7:00 – 7:05 hrs. Introducción y presentación – Dra. Viridiana Gorbea Chávez
7:05 – 7:30 hrs. El uroginecólogo en la decisión de la vía del nacimiento – Dr. Heriberto Lizaola Díaz de León
7:30 – 7:55 hrs. Cuidados del piso pélvico durante el embarazo y el parto – Dra. Patricia Velázquez Castellanos
7:55 – 8:20 hrs. Lesiones obstétricas y su reparación adecuada – Dra. Viridiana Gorbea Chávez
8:20 – 8:45 hrs. Rehabilitación del piso pélvico – Dra. Silvia Rodríguez Colorado
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor

"""
items[1].items[4].desc = """
Objetivo General:
Mostrar al médico la importancia de la administración y proyección de su ejercicio profesional en el aspecto ético, social, laboral, administrativo y mercadológico.
 Objetivos específicos:
Establecer al consultorio médico como una empresa de servicios, regulado por procesos y supervisión continua, así como medición de indicadores de calidad del servicio.
Importancia de los recursos humanos, selección, motivación y aspectos de relación laboral.
Impacto de la mercadotecnia en el ejercicio médico.
Definición de costos de un consultorio como unidad de negocio.

Profesor Titular: Dra. Elsa Díaz López
 Profesores Adjuntos: Dr. Álvaro Erramuspe Espinosa
Dr. Luis Uribe

Primer día (lunes, 6 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Bienvenida e introducción – Dra. Elsa Díaz López
7:05 – 7:30 hrs. Visión empresarial del ejercicio profesional – Dr. Álvaro Erramuspe
7:30 – 7:55 hrs. Diversidad de herramientas en mercadotecnia: publicidad, promoción y redes sociales – Dr. Jorge Méndez Trujeque
7:55 – 8:20 hrs. La calidad en la atención del consultorio – Dr. Alfonso Arias
8:20 – 8:45 hrs. ¿cómo mejorar la atención del médico con el paciente? – Dr. José de Gracia
8:45 – 9:00 hrs. Preguntas – Dr. Luis Uribe

Segundo día (martes, 7 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción - Dr. Álvaro Erramuspe
7:05 – 7:30 hrs. Decálogo básico fiscal para gestión del consultorio del Gineco-obstetra – C.P. Rogelio Torres
7:30 – 7:55 hrs. Prevención del fraude en el consultorio – Dra. Elsa Díaz López
7:55 – 8:20 hrs. Percepción de imagen del personal médico y área física en los pacientes. – Dr. Rodrigo Zamora
8:20 – 8:45 hrs. Comunicación efectiva. (verticalización y supervisión de la información en el consultorio) – Dr. José Tirán
8:45 – 9:00 hrs. Preguntas – Dra. Elsa Díaz López

Tercer día (miércoles, 8 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción – Dr. Luis Uribe
7:05 – 7:30 hrs. Equipo de trabajo eficiente del Gineco-obstetra (reclutamiento, selección, capacitación y desarrollo) – Dr. Ignacio Lara Barragán
7:30 – 7:55 hrs. ¿Cómo motivas a tu equipo de trabajo? – Dra. Elsa Moreno Verduzco
7:55 – 8:20 hrs. Comunicación efectiva y relacionamiento con los pacientes y el público objetivo – Dr. Miguel Ruoti
8:20 – 8:45 hrs. ¿Qué tan a largo plazo he visualizado mi futuro profesional? – Dr. Paulino Vigil de Gracia
8:45 – 9:00 hrs. Preguntas – Dra. Elsa Díaz López
 Cuarto Día (jueves, 9 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción – Dr. Luis Uribe
7:05 – 7:30 hrs. ¿Cómo evalúo la calidad de mi servicio en el consultorio médico? – Dr. Mauricio Mendieta Albornoz
7:30 – 7:55 hrs. Procesos de trabajo en mi consultorio ¿podrían afectar mi desarrollo profesional? – Dr. Juan Diego Villegas
7:55 – 8:20 hrs. Síndrome de desgaste ocupacional. – Dr. Luis Uribe
8:20 – 8:45 hrs. ¿Cómo excedo las expectativas del paciente? (Mesa de discusión)
– Dra. Elsa Díaz – Dr. Álvaro Erramuspe – Dra. Ivonne Díaz
8:45 – 9:00 hrs. Conclusiones – Dr. Álvaro Erramuspe

"""
items[1].items[5].desc = """
Objetivo General:
El asistente conocerá los recursos electrónicos que tiene a su alcance para eficientar su práctica clínica.
 Objetivos Específicos:
El asistente conocerá las diferentes herramientas disponibles para gestionar el consultorio médico y eficientar la práctica profesional.
Conocer riesgo y beneficios del uso de las redes sociales y medios digitales.
Incorporar las TIC’S en la autogestión de aprendizaje y educación continua.

Profesor Titular:
Dr. Salvador Espino y Sosa
 Profesores Adjuntos: Dra. Paola Iturralde Rosas Priego
Dr. Christian Navarro

Primer día (lunes, 6 de noviembre) “RECURSOS ELECTRÓNICOS EN EL CONSULTORIO”

7:00 – 7:05 hrs. Introducción y bienvenida – Dr. Salvador Espino
7:05 – 7:40 hrs. Portales web – Dr. Alfonso Arias
7:40 – 8:10 hrs. La imagenología y los medios digitales – Dr. Gerardo Aurioles López
8:10 – 8:45 hrs. Realidades y perspectiva de la enseñanza médica y los medios digitales – Dr. José Roberto Ahued Ahued
8:45 – 9:00 hrs. Preguntas y conclusiones – Dr. Salvador Espino y Sosa

Segundo día (martes, 7 de noviembre) “AUTOGESTIÓN DEL APRENDIZAJE”

7:00 – 7:05 hrs. Introducción y presentación – Dr. Cristian Navarro
7:05 – 7:35 hrs. Sitios y aplicaciones educativas – Dr. Luis G. Sentíes Cortina
7:35 – 8:00 hrs. Entrenamiento en simuladores… ¿Hacia dónde vamos? – Dr. Javier Gómezpedroso Rea
8:00 – 8:30 hrs. Estrategias de búsqueda de la literatura en internet – Dr. Salvador Espino y Sosa
8:30 – 9:00 hrs. Preguntas y conclusiones – Dr. Cristian Navarro

Tercer día (miércoles, 8 de noviembre) “HERRAMIENTAS CLÍNICAS” 
7:00 – 7:05 hrs. Introducción y presentación – Dra. Paola Iturralde Rosas Priego
7:05 – 7:30 hrs. Aplicaciones móviles en iPhone y Android – Dr. Miguel Ruoti
7:30 – 7:55 hrs. Hacer presentaciones eficaces en Power Point – Dra. Paola Iturralde Rosas Priego
7:55 – 8:45 hrs. El expediente electrónico – Dr. Cristian Navarro
8:45 – 9:00 hrs. Preguntas y conclusiones – Dra. Paola Iturralde Rosas Priego

Cuarto día (jueves, 9 de noviembre) “MISCELÁNEAS”

7:00 – 7:05 hrs. Introducción y presentación – Dr. Salvador Espino y Sosa
7:05 – 7:30 hrs. Las carpetas virtuales en la nube como herramienta de enseñanza – Dr. Miguel Ruoti
7:30 – 7:55 hrs. Auto monitoreo compartido con Google Drive – Dr. Salvador Espino y Sosa
7:55 – 8:20 hrs. Riesgos legales de las redes sociales y medios digitales – Dr. Robles Elías
8:20 – 8:45 hrs. Ventajas y desventajas de aplicar medios digitales – Dr. Álvaro Erramuspe
8:45 – 9:00 hrs. Preguntas y conclusiones – Dr. Salvador Espino y Sosa

"""
items[1].items[6].desc = """
Objetivo General:
Actualizar los conocimientos respecto a la anticoncepción para mejorar la asesoría anticonceptiva a la luz de la evidencia científica y las necesidades de la población.
 Objetivos Específicos:
Revisar las nuevas evidencias e impacto de la anticoncepción de emergencia y la anticoncepción de larga duración reversible.
Conocer experiencias exitosas regionales en anticoncepción postaborto.
Revisar la anticoncepción en situaciones especiales y su impacto en la salud.

Profesor Titular: Dr. Pio Iván Gómez
 Profesores Adjuntos: Dra. Lida Sosa Dr. Ariel Ruíz parra
Dr. Luis Hernández


Primer día (lunes, 6 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y objetivos – Dr. Pio Iván Gómez
7:05 – 7:30 hrs. Que hay de nuevo en anticoncepción de larga duración reversible (LARCS) – Dra.  Vivian Drache
7:30 – 7:55 hrs. ¿Por qué es importante ofrecer anticoncepción moderna de larga duración a adolescentes? – Dr. Rodolfo Gómez Ponce de León
7:55 – 8:20 hrs. Estado actual de la anticoncepción de emergencia en Latinoamérica y el caribe. – Dra. Lida Sosa
8:20 – 8:45 hrs. Avances en anticoncepción de emergencia – Dra. Vivian Brache
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor 
Segundo día (martes, 7 de noviembre) “AVANCES EN ANTICONCEPCIÓN”

7:00 – 7:05 hrs. Introducción y objetivos – Dr. Pio Iván Gómez
7:05 – 7:30 hrs. Verdaderas características de las progestinas – Dr. Ariel Iván Ruíz
7:30 – 7:55 hrs. Nuevos criterios de elegibilidad OMS 2015 – Dr. Pio Iván Gómez
7:55 – 8:20 hrs. Anticoncepción y ovario poliquístico – Dr. Ariel Iván Ruíz
8:20 – 8:45 hrs. Anticoncepción en la mujer peri menopáusica – Dr. Luis Hernández
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor

Tercer día (miércoles, 8 de noviembre) “AVANCES EN ANTICONCEPCIÓN: ANTICONCEPCIÓN POSTABORTO EN LATINOAMÉRICA Y EL CARIBE: EXPERIENCIA DE LA RED CLAP MUSA” 
7:00 – 7:05 hrs. Introducción y objetivos – Dr. Pio Iván Gómez
7:05 – 7:30 hrs. Experiencia en Argentina – Dra. Analía Messina
7:30 – 7:55 hrs. Experiencia en Bolivia – Dr. Amanda Moreno
7:55 – 8:20 hrs. Experiencia en Chile – Dr. Gonzalo Rubio
8:20 – 8:45 hrs. Experiencia en Cuba – Dr. Luis Salas
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor 
Cuarto día (jueves, 9 de noviembre) “AVANCES EN ANTICONCEPCIÓN” 
7:00 – 7:05 hrs. Introducción y objetivos – Dr. Pio Iván Gómez
7:05 – 7:30 hrs. La anticoncepción dentro del marco integral de los derechos reproductivos – Dra. Mónica Roa
7:30 – 7:55 hrs. Zika y SSRR ¿Por qué LARCS son una opción costo efectiva? – Dr. Rodolfo Gómez Ponce de León
7:55 – 8:20 hrs. Anticoncepción y sexualidad – Dra. Alessandra Grazziotiin
8:20 – 8:45 hrs. Anticoncepción con progestinas y trombosis – Dr. Ariel Ruiz
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor

"""
items[1].items[7].desc = """
Objetivo General
Revisión integral de los conceptos necesarios para iniciar un desempeño eficiente en la cirugía mínimamente invasiva.
 Objetivos Específicos
Conocer las competencias básicas adecuadas en los aspectos necesarios para iniciar el proceso de enfrentarse a los procedimientos mínimamente invasivos: energía, ergonomía, equipos, suturas.
Diferenciar las competencias básicas adecuadas en el enfoque de los principales procedimientos quirúrgicos ginecológicos realizados por vía histeroscópica y/o laparoscópica, junto con las indicaciones propias de cada uno, comparado con otras vías de abordaje.
Identificar aquellas situaciones que implican mayor dificultad en los procedimientos laparoscópicos, y que se benefician de escuchar a docentes capacitados y que se han expuesto con estas dificultades a través de su larga experiencia y capacitación.

Profesor titular: Dr. Jimmy Castañeda
 Profesores adjuntos: Dr. Jorge Sarrouf
Dr. Rafael Padrón

Primer día (lunes, 6 de noviembre) “GENERALIDADES”

7:00 – 7:05 hrs. Presentación y objetivos del curso (PRETEST) – Dr. Jimmy Castañeda
7:05 – 7:25 hrs. Anatomía pélvica laparoscópica – Dr. Jorge Sarrouf
7:25 – 7:45 hrs. Ergonomía en laparoscopia – Dr. Jorge Sarrouf
7:45 – 8:05 hrs. Energía en cirugía mínimamente invasiva – Dr. Estuardo Carrera
8:05 – 8:25 hrs. Suturas – Dr. Pablo Ayroza
8:25 – 8:45 hrs. Seguridad en CMI – Dr. Rafael Padrón
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor
 Segundo día (martes, 7 de noviembre) “HISTEROSCOPIA”  
7:00 – 7:05 hrs. Presentación y objetivos del día – Dr. Jimmy Castañeda
7:05 – 7:25 hrs. Equipos e instrumental – Dr. Alfonso Arias
7:25 – 7:45 hrs.  Medios de distensión – Dr. Alfredo Celis
7:45 – 8:05 hrs. Histeroscopia de oficina – Dr. Alfonso Arias
8:05 – 8:25 hrs. Miomectomia – Dr. Rafael Padrón
8:25 – 8:45 hrs. Anomalías mullerianas – Dr. Jimmy Castañeda
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor

Tercer día (miércoles, 8 de noviembre)
“LAPAROSCOPIA” 
7:00 – 7:05 hrs. Presentación y objetivos del día – Dr. Jimmy Castañeda
7:05 – 7:25 hrs. Vías de abordaje - entrada de trócares – Dr. Juan Diego Villegas
7:25 – 7:45 hrs. Masas/tumores anexiales – Dr. Alfredo Celis
7:45 – 8:05 hrs. Endometriosis (manejo del endometrioma) – Dr. Marco A. López Zepeda
8:05 – 8:25 hrs. Miomectomia – Dr. Jimmy Castañeda
8:25 – 8:45 hrs. Laparoscopia en cáncer ginecológico – Dr. Jorge Sarrouf
8:45 – 9:00 hrs.  Preguntas y conclusiones – Doctor 
Cuarto día (jueves, 9 de noviembre) “TIPS EN LAPAROSCOPIA”  
7:00 – 7:05 hrs. Presentación y objetivos del día – Dr. Jimmy Castañeda
7:05 – 7:25 hrs. Histerectomía en útero grande – Dr. Leonel Alfonso Pedraza
7:25 – 7:45 hrs. Histerectomía vaginal sin prolapso – Dr. Cristian Navarro
7:45 – 8:05 hrs. Endometriosis profunda – Dr. Marco A. López Zepeda
8:05 – 8:25 hrs. Complicaciones en laparoscopia – Dr. Pablo Ayroza
8:25 – 8:45 hrs. Complicaciones en histeroscopia – Dr. Alfonso Arias
8:45 – 9:00 hrs. Preguntas y conclusiones (POSTEST) – Doctor

"""
items[1].items[8].desc = """
Objetivo General
Mejorar las habilidades clínicas y competencias no técnicas en el manejo integral de preeclampsia.
 Objetivos Específicos:
Establecer el impacto epidemiológico en morbilidad y mortalidad de preeclampsia.
Definir los criterios diagnósticos de severidad en paciente con preeclampsia.
Definir basado en la evidencia las condiciones para el manejo de preeclampsia por edades gestacionales.

Profesor Titular: Dra. María Fernanda Escobar Vidarte
 Profesores Adjuntos: Dr. Jack Ludmir Dr. Hector Bollati

Primer día (lunes, 6 de noviembre) “CONDICIONANTES DEL MANEJO EN PREECLAMPSIA SEVERA”

7:00 – 7:05 hrs. Introducción y presentación – Dr. Paulino Vigil-de Gracia
7:05 – 7:30 hrs. Morbilidad y mortalidad asociado a preeclampsia – Dr. Jack Ludmir
7:30 – 7:55 hrs. Criterios de severidad en preeclampsia – Dr. Paulino Vigil-de Gracia
7:55 – 8:20 hrs. Evidencia para el manejo de preeclampsia por edades gestacionales – Dr. Jack Ludmir
8:20 – 8:45 hrs. Condiciones para el manejo expectante lejos del termino con preeclampsia severa – Dr. Paulino Vigil-de Gracia
8:45 – 9:00 hrs. Preguntas y conclusiones – Doctor

Segundo día (martes, 7 de noviembre) “EL FETO EN PACIENTES CON PREECLAMPSIA”

7:00 – 7:05 hrs. Introducción y presentación – Dra. Wendy Carcamo
7:05 – 7:30 hrs. Fisiopatología de la placenta en preeclampsia – Dr. Fredy Gonzáles
7:30 – 7:55 hrs. Manejo del RCIU asociado a preeclampsia – Dra. Wendy Carcamo
7:55 – 8:20 Pruebas de bienestar fetal en pacientes con preeclampsia en manejo expectante – Dr. Fredy Gonzáles
8:20 – 8:45 hrs. Tiempo y vía de finalización del embarazo en preeclampsia – Dra. Wendy Carcamo
8:45 – 9: 00 hrs. Preguntas y conclusiones – Dr. Fredy Gonzáles

Tercer día (miércoles, 8 de noviembre) “PREDICCIÓN Y PREVENCIÓN DE PREECLAMPSIA”

7:00 – 7:05 hrs. Introducción y presentación – Dr. Héctor Bollati
7:05 – 7:30 hrs. Modelos predictivos en preeclampsia – Dr. Paulo Meade
7:30 – 7:55 hrs. Estrategias efectivas de prevención de preeclampsia – Dr. Héctor Bollati
7:55 – 8:20 hrs. Modelos de control prenatal para manejo ambulatorio de preeclampsia – Dr. Paulo Meade
8:20 – 8:45 hrs. Condiciones de seguridad para el manejo intrahospitalario de preeclampsia – Dr. Héctor Bollati
8:45 – 9: 00 hrs. Preguntas y conclusiones – Dr. Paulo Meade

Cuarto día (jueves, 9 de noviembre) “COMPLICACIONES CATASTRÓFICAS EN PREECLAMPSIA”

7:00- 7:00 hrs. Introducción y presentación – Dr. Mauricio Vasco
7:05 – 7:30 hrs. Crisis hipertensivas en preeclampsia – Dr. Javier Carbajal
7:30 – 7:55 hrs. Síndrome HELLP – Dr. Mauricio Vasco
7:55 – 8:20 hrs. Edema pulmonar en preeclampsia – Dra. María Fernanda Escobar
8:20 – 8:45 hrs. Monitoria del lev y gasto cardiaco en preeclampsia severa – Dr. Mauricio Vasco
8:45 – 9: 00 hrs. Preguntas y conclusiones – Dra. María Fernanda Escobar

"""
items[1].items[9].desc = """
Objetivo general:
Mejorar las habilidades clínicas y competencias no técnicas en el manejo integral de las patologías infecciosas.
 Objetivos específicos:
Determinar riesgos de infecciones maternas y perinatales y aporte sobre nuevas infecciones.
Diagnóstico, presentación abordaje de infecciones perinatales más frecuentes.
Evaluación sobre parto prematuro, muertes perinatales, e infecciones materno/fetales.
 Profesor Titular: Dr. Freddy González Arias
 Profesores Adjuntos: Dr. Juan Andrés Pérez W. Dr. Saulo Molina     
Primer día (lunes, 6 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y bienvenida – Dr. Freddy González Arias
7:05 – 7:30 hrs. Epidemiología de las infecciones perinatales en Latinoamérica – Dr. Saulo Molina
7:30 – 7:55 hrs. Vías de infección: congénitas y perinatales – Dr. Erasmo Huerta
7:55 – 8:20 hrs. Síndrome de respuesta inflamatoria fetal – Dr. Juan Pérez Wulff
8:20 – 8:45 hrs. Manifestaciones ecográficas en las infecciones – Dr. Luis Fernando acosta Alfaro
8:45 – 9:00 hrs. Preguntas – Doctor

Segundo día (martes, 7 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y bienvenida – Dr. Erasmo Huerta
7:05 – 7:30 hrs. Manejo del HIDROPS fetal de origen infeccioso – Dr. Luis Fernando Acosta Alfaro
7:30 – 7:55 hrs. Actualización y manejo de la sífilis – Dr. Saulo Molina
7:55 – 8:20 hrs. Toxoplamosis – Dr. Erasmo Huerta
8:20 – 8:45 hrs. Infecciones tropicales (paludismo, chagas, cólera, amibiasis) – Dr. Williams Sánchez
8:45 – 9:00 hrs. Preguntas – Doctor

Tercer día (jueves, 9 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y bienvenida – Dr. Juan Pérez Wulff
7:05 – 7:30 hrs. Evaluación serológica de las infecciones perinatales de riesgo – Dr. Saulo Molina
7:30 – 7:55 hrs. Virus que producen compromiso fetal (Citomegalovirus rubeola) – Dr. Juan Pérez Wulff
7:55 – 8:20 hrs. Virus con compromiso fetal-neonatal periparto (herpes, hepatitis, HIV) – Dr. Erasmo Huerta
8:20 – 8:45 hrs. Infecciones emergentes: chikungunya, dengue y zika – Dr. Freddy González Arias
8:45 – 9:00 hrs. Preguntas – Doctor

Cuarto día (jueves, 9 de noviembre) TÍTULO PENDIENTE 
7:00 – 7:05 hrs. Introducción y bienvenida – Dr. Saulo Molina
7:05 – 7:30 hrs. Infecciones maternas con riesgo de parto pretérmino – Dr. Williams Sánchez
7:30 – 7:55 hrs. Procedimientos invasivos en el manejo de las infecciones perinatales – Dr. Juan Pérez Wulff
7:55 – 8:20 hrs. Tratamiento materno-fetal en las complicaciones infecciosas – Dr. Saulo Molina
8:20 – 8:45 hrs. Vacunación en la paciente embarazada – Dr. Julio Gonel
8:45 – 9:00 hrs. Preguntas – Dr. José de Gracia
"""

    //****************      Conferencias Magistrales  ********************
    
    items[2].items[0].desc = """
Dr. Sergio Fajardo Dueñas
Presidente de la Federación Mexicana de Ginecología y obstetricia 2015-2017
Presidente: Dr. Miguel Ángel Mancera Reséndiz

Impartida por: Dr. Sergio Fajardo Dueñas
"""
    items[2].items[1].desc = """
Dr. Chittaranjan N.
Presidente: Dr. Juan Carlos Hinojosa Cruz

Impartida por: Dr. Chittaranjan N

"""
    items[2].items[2].desc = """
Dr. Edgar Iván Ortíz Lizcano
Presidente de la Federación Latinoamericana de Sociedades de Obstetricia y
Ginecología 2014-2017

Impartida por: Dr. Edgar Iván Ortíz Lizcano

"""
    
    //****************      Conferencias Especiales  ********************
items[3].items[0].desc = """
Dr. Andrea Genazzani
Presidente: Horacio Ortega Clavero

Impartido por: Dr. Andrea Genazzani 
"""
items[3].items[1].desc = """
Dra. Karin Huysner
Presidente: Dr. José Manuel González Martínez

Impartido por: Dra. Karin Huysner
"""
items[3].items[2].desc = """
Dra. Alexandra Grazziotin
Presidente: Dr. Rafael Bedolla torres

Impartido por: Dra. Alexandra Grazziotin
"""
items[3].items[3].desc = """
Dra. Cynthia Stuenkel 
Presidente: Dr. Manuel Sainz cabrera

Impartido por: Dra. Cynthia Stuenkel 
"""
items[3].items[4].desc = """
Dr. Alberto Kably Ambe
Presidente: Dr. Dency Lorenzo de Jesús Díaz Cervera

Impartido por: Dr. Alberto Kably Ambe
"""
items[3].items[5].desc = """
Dr. Haywood Brown
Presidente: Dr. Armando Enrique Carrera Cervon

Impartido por: Dr. Haywood Brown 
"""
items[3].items[6].desc = """
Dr. Samuel Karchmer K.
Presidente: Dr. Luis Alberto Barrera González

Impartido por: Dr. Dr. Samuel Karchmer K.
"""
items[3].items[7].desc = """
Dra. Jeanne Conry
Presidente: Dr. Cesar Enrique Favela Heredia

Impartido por: Dra. Jeanne Conry
"""
    
    //****************      Encuentro Latinoamericano de residentes G.O.   ********************
items[4].items[0].desc = """
Historia natural de las enfermedades dengue chikungunya y zika (Cuba)

Infección por dengue, durante el embarazo y efectos sobre el feto (México)

Infección por chikungunya, durante el embarazo y efectos sobre el feto (Haití)

Infección por zika, durante el embarazo y efectos sobre el feto (Brasil)
"""

items[4].items[1].desc = """
Bajo peso al nacimiento (Honduras)

Pubertad precoz (Panamá)

Ovario poliquístico (R. Dominicana)

Síndrome metabólico (El salvador)

"""

items[4].items[2].desc = """
De la infertilidad social a la infertilidad médica (Argentina)

Endometriosis una patología sobre tratada (Paraguay)

La evolución de los resultados de la fertilización asistida (Chile)

Postergación de la maternidad en forma responsable (Bolivia)

"""

items[4].items[3].desc = """
Depresión pos cesárea y lactancia artificial (Costa Rica)

Incremento de alergias y asma en el R.N. (Guatemala)

IQ bajo y autismo (Nicaragua)

Obesidad y sobrepeso en la etapa adulta con el antecedente de nacer vía cesárea (Colombia)

"""

items[4].items[4].desc = """
Factores de riesgo del incremento de cáncer de mama (Ecuador)

Relación del cáncer de endometrio y SOP (Uruguay)

Hiperestimulación ovárica y cáncer de ovario (Perú)

Cáncer cervico-uterino y libertad sexual. ¿Mito o realidad? (Venezuela)
"""
    
    //****************      Simposios Especiales   ********************
items[5].items[0].desc = """
Pendiente 14:00 – 15:00 hrs.

Pendiente 14:00 – 15:00 hrs.

Pendiente 14:00 – 15:00 hrs.
"""
items[5].items[1].desc = """
DEMESA 14:00 – 15:00 hrs.

GEDEON RICHTER 14:00 – 15:00 hrs.

MSD 14:00 – 15:00 hrs.
"""
items[5].items[2].desc = """
GEDEON RICHTER 14:00 – 15:00 hrs.

Pendiente 14:00 – 15:00 hrs.

IPAS 14:00 – 15:00 hrs.
"""
    
    //****************      Simposios simultáneos   ********************

items[6].items[0].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Ernesto Castelazo Morales
9:35 – 9:55 hrs. El periodo periconcepcional: que aconsejar y que hacer para un embarazo saludable. – Dr. Gian Carlo Di Renzo
9:55 – 10:15 hrs. Prevención del nacimiento pretérmino en países de bajos y altos ingresos: un mandato de FIGO – Dr. Ernesto Castelazo Morales
10:15 – 10:35 hrs. Nacimiento pretérmino: predicción, prevención y necesidades insatisfechas – Prof. Gian Carlo Di Renzo
10:35 – 10:55 hrs. Evidencias de progesterona en embarazo múltiple – Dr. Eduardo da Fonseca
10:55 – 11:00 hrs.  Conclusiones – Doctor
    
"""

items[6].items[1].desc = """
    9:30 – 9:35 hrs. Introducción y presentación – Dr. Emilio José Olaya guzmán
    9:35 – 9:55 hrs. Cáncer de ovario: abordaje de mínima invasión. – Dr. Alfredo Antonio Santillán Gómez
    9:55 – 10:15 hrs. CACU: Cirugía robótica y conservadora de nervios. – Dr. Enrique Soto Medina
    10:15 – 10:35 hrs. Cáncer de endometrio. Cirugía robótica. – Dr. Emilio José Olaya Guzmán
    10:35 – 10:55 hrs. Ganglio centinela en cáncer ginecológico. – Dr. Alfredo Antonio Santillán Gómez
    10:55 – 11:00 hrs. Conclusiones – Dr. Emilio José Olaya guzmán
    """

items[6].items[2].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Sergio Fajardo Dueñas
9:35 – 9:55 hrs. Predicción de diabetes gestacional en el primer trimestre ¿qué tan cerca estamos? – Dr. Sebastian Illanez López
9:55 – 10:15 hrs. Obesidad y embarazo ¿Cuál es el reto? – Dr. Giancarlo Mari
10:15 – 10:35 hrs. El manejo farmacológico y la vigilancia fetal: ¿mejoran el resultado del embarazo? – Dr. Cesar Favela Heredia
10:35 – 10:55 hrs. Programación metabólica fetal y el futuro despues de la DMG – Dr. José Antonio Ayala méndez
10:55 – 11:00 hrs. Conclusiones – Dr. Sergio Fajardo Dueñas

"""

items[6].items[3].desc = """
9:30 – 9:35 hrs. Introducción – Dr. Eduardo Da Fonseca
9:35 – 9:55 hrs. Cribado versus diagnóstico de anomalías cromosómicas – Dra. Juliana Esteves
9:55 – 10:15 hrs. Exámenes prenatales no invasivos – Dr. Sebastián Illanes
10:15 – 10:35 hrs. Ultrasonido del primer trimestre en la era de las pruebas no invasivas – Dra. Ana Bianchi
10:35 – 10:55 hrs. Tamizaje vs diagnóstico de confirmación en el primer trimestre. – Dra. Catalina Valencia
10:55 – 11:00 hrs. Conclusiones – Dr. Eduardo Da Fonseca

"""

items[6].items[4].desc = """
9:30 – 9:35 hrs. Introducción – Dr. Jorge Peláez
9:35 – 9:55 hrs. Ambigüedad sexual: uso de los recursos diagnósticos. – Dra. María Mercedes Pérez
9:55 – 10:15 hrs. Vaginoscopia: su importancia en la patología ginecológica de la niña.  – Dra. Margarita Castro.
10:15 – 10:35 hrs. Pubertad precoz, ¿qué tan precoz? – Dr. Raúl Bermúdez
10:35 – 10:55 hrs. Patología vulvar en la niña. – Dra. Gricel Valerio
10:55 – 11:00 hrs. Conclusiones – Dr. Jorge Peláez (cuba)
"""

items[6].items[5].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Pio Iván Gómez
9:35 – 9:55 hrs. Profesionalismo médico en salud y derechos sexuales y reproductivos.  – Dr. Leonel Briozzo
9:55 – 10:15 hrs. Optimizando roles de los prestadores de atención en salud materna y salud reproductiva. – Dr. Paulo Joao Souza
10:15 – 10:35 hrs. La anticoncepción dentro del marco integral de los derechos reproductivos. – Dra. Mónica Roa
10:35 – 10:55 hrs. Necesidades insatisfechas de anticoncepción en tiempos de zika en América latina y el Caribe. – Dr. Rodolfo Gómez Ponce de León.
10:55 – 11:00 hrs. Conclusiones – Dr. Leonel Briozzo y Dr. Pio Iván Gómez
"""

items[6].items[6].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Ernesto Castelazo Morales
9:35 – 9:55 hrs. Más allá de la prevención: nuevas estrategias usando misoprostol para el manejo de hemorragia postpart. – Jill Durocher, GYNUITY Health Projects
9:55 – 10:15 hrs. ¿Qué tan importante es la vía de administración de oxitocina para reducir el sangrado postparto? – Dr. Guillermo Carroli
10:15 – 10:35 hrs. (Re)definiendo HPP: nueva evidencia en el índice de shock como un indicador nuevo para evaluar la severidad de la HPP – Dra. Elba Mirta Morales
10:35 – 10:55 hrs. Intervenciones terapéuticas prometedoras para controlar la hemorragia severa: nueva evidencia, resultados claves, y novedades sobre tratamientos recomendados. – Dr. Joao Paulo Souza
10:55 – 11:00 hrs. Conclusiones - Doctor
"""

items[6].items[7].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Paulino Vigil de Gracia
9:35 – 9:55 hrs. Prevención de preeclampsia: mitos y realidades – Dr. Fernando Romero Arauz
9:55 – 10:15 hrs. Nuevas terapias en preeclampsia – Dr. Andres Sánchez Domínguez
10:15 – 10:35 hrs. Puntos criticos en el manejo del sindrome de HELLP – Dr. Baha M. Sibai
10:35 – 10:55 hrs. Avances en el manejo de la eclampsia – Dr. Paulino Vigil de Gracia
10:55 – 11:00 hrs. Conclusiones – Doctor

"""

items[6].items[8].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. José Tiran
9:35 – 9:55 hrs. Implicaciones en la reproducción de las parejas infectadas con zika, dengue, chinkinguya y malaria – Dra. Karyn Huyser
9:55 – 10:15 hrs. Diagnóstico y manejo de la mujer embarazada residente en zona endémica o con historia de viaje a zonas endémicas. – Dr. José Tiran
10:15 – 10:35 hrs. Proyeto praca onze: nuevas lecciones y retos futuros provenientes de un área endémica de zika. – Dr. Mauro Schechter
10:35 – 10:55 hrs. Recomendaciones para hombres y sus parejas embarazadas, asi como a mujeres buscando embarazo con posibilidad de tener zika, malaria, dengue o chikingunya. – Dra. Catalina Valencia
10:55 – 11:00 hrs. Conclusiones – Dr. José Tiran
"""

items[6].items[9].desc = """
9:30 – 9:35 hrs. Introducción – Dr. Juan Diego Villegas Echeverri
9:35 – 9:55 hrs. Transición de dolor agudo a crónico: lo que todo cirujano debe saber acerca de la biología del dolor persistente. – Dr. Juan Diego Villegas Echeverri
9:55 – 10:15 hrs. Historia clínica y examen físico en DPC – Dr. Jorge Carrillo
10:15 – 10:35 hrs. Tratando el dolor pélvico crónico: manejo quirúrgico – Dr. Juan Diego Villegas
10:35 – 10:55 hrs. Tratando el dolor pélvico crónico: Manejo médico. – Dr. Jorge Carrillo
10:55 – 11:00 hrs. Conclusiones – Dr. Juan Diego Villegas

"""

items[6].items[10].desc = """
9:30 – 9:35 hrs. Introducción – Dr. Carlos Füchtner
9:35 – 9:55 hrs. Utilizacion de traje antichoque no neumatico en hemorragia obstetrica.  – Dr. Carlos Füchtner
9:55 – 10:15 hrs. Estrategias quirúrgicas de rescate en hemorragia obstétrica – Dr. Emigdio Torres Faria
10:15 – 10:35 hrs. Trombo profilaxis en embarazo. – Dr. Mauricio Vasco
10:35 – 10:55 hrs. Impacto del cuidado critico obstétrico en la mortalidad materna. – Dra. María Fernanda Escobar
10:55 – 11:00 hrs. Conclusiones – Dr. Carlos Füchtner
"""

items[6].items[11].desc = """
9:30 – 9:35 hrs. Introducción – Dr. José Ramón Serrano Navarro
9:35 – 9:55 hrs. Escala de calidad de vida – Dr. Ezequiel Pérez Campos
9:55 – 10:15 hrs. Tromboembolismo. Abordaje desde la SEC – Dra. Isabel Ramírez Polo
10: 15 – 10:35 hrs. Situación de la anticoncepción en España y Europa – Dr. José Vicente González Navarro
10:35 – 10:55 hrs. SEC Y FLASOG. Una alianza estratégica. Presente y futuro. – Dr. José Ramón Serrano Navarro
10:55 – 11:00 hrs. Conclusiones – Dr. José Ramón Serrano Navarro
"""

items[6].items[12].desc = """
    9:30 – 9:35 hrs. Introducción y presentación – Dr. Ignacio Lara Barragán
    9:35 – 9:55 hrs. Nutrición y grasa corporal: lo que toda mujer debe saber. – Dra. Jenifer Blake
    9:55 – 10:15 hrs. Entrenamiento en ginecologia oncologica. Un relación integral entre canada y paises en vías de desarrollo – Dr. De Pretillo
    10:15 – 10:35 hrs.  El envejecimiento del médico y la importancia de su actualización. – Dra. Jenifer Blake
    10:35 – 10:55 hrs. Anatomía pélvica practica para el ginecólogo. – Dr. De Pretillo
    10:55 – 11:00 hrs. Conclusiones – Dr. Ignacio Lara Barragán
"""

items[6].items[13].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Emilio Valerio Castro
9:35 – 9:55 hrs. Experiencia en México – Dr. Carlos Salazar López
9:55 – 10:15 hrs. Tratamiento médico – Dr. Juan Carlos Hinojosa
10:15 – 10:35 hrs. Tratamiento quirúrgico histeroscópico – Dr. Emilio Valerio Castro
10:35 – 10:55 hrs. Tratamiento quirúrgico y no histeroscopico. – Dr. José Manuel González Martínez
10:55 – 11:00 hrs. Conclusiones – Doctor
"""

items[6].items[14].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dra. Nancy Sierra Lozada
9:35 – 9:55 hrs. Complicaciones en los embarazos gemelares monocoriales – Dr. Yves Ville
9:55 – 10:15 hrs. Programa en México de reparación fetoscópica de espina bífida abierta. – Dr. Gerardo Sepúlveda González
10:15 – 10:35 hrs. Intervención cardiaca fetal: técnica, resultados y complicaciones – Dr. Yves Ville
10:35 – 10:55 hrs. Hernia diafragmatica congenita: fetoscopia vs ECMO – Dr. Rogelio Cruz Martínez
10:55 – 11:00 hrs. Conclusiones – Dra. Nancy Sierra

"""

items[6].items[15].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Luis Cabero R.
9:35 – 9:55 hrs. Circulo vicioso de las complicaciones de los embarazos y las enfermedades no comunicables – Dr. Cn Purandare
9:55 – 10:15 hrs. Pandemia de la diabetes e hiperglucemia en Latinoamérica – Dr. Moshe Hod
10:15 – 10:35 hrs. Impacto de la diabetes, la obesidad y el síndrome metabólico en el embarazo – Dr. Giancarlo Di Renzo
10:35 – 10:55 hrs. Controversias en el diagnóstico de la diabetes gestacional – Dr. Edgar Iván Ortíz
10:55 – 11:00 hrs. Conclusiones – Dr. Luis Cabero R.
"""

items[6].items[16].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Roberto Epifanio
9:35 – 9:55 hrs. Aborto recurrente. Algo por hacer – Dra. Ivonne Díaz
9:55 – 10:10 hrs. Conservación de la fertilidad. ¿Ficción o realidad? – Dr. Ricardo Pommer
10:15 – 10:35 hrs. Ovario androgénico: Enfoque diagnóstico y tratamiento – Dr. Roberto Epifanio
10:35 – 10:55 hrs. Tiroides e infertilidad – Dra. Ivonne Díaz
10:55 – 11:00 hrs. Conclusiones – Dr. Roberto Epifanio

"""

items[6].items[17].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. José de Jesús Montoya R.
9:35 – 9:55 hrs. Disfunción del piso pélvico en la menopausia, un problema diario – Dr. Alejandro Paradas
9:55 – 10:15 hrs. Síndrome metabólico, un reto para el ginecólogo – Dr. Néstor Siseles
10:15 – 10:35 hrs. Las alteraciones psico-sexuales, el primer contacto es el ginecólogo. – Dr. María Cecilia Arturo
10:35 – 10:55 hrs. ¿Cuál es la participación del ginecólogo en las alteraciones cardiovasculares? – Dr. Néstor Siseles
10:55 – 11:00 hrs. Conclusiones – Dr. José de Jesús Montoya R.
"""

items[6].items[18].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dra. Paola Iturralde Rosas Priego
9:35 – 9:55 hrs. Potencial evolutivo de las lesiones Hiperplasicas – Dr. Néstor Garello
9:55 – 10:15 hrs. Papiloma intraductal… ¿Qué tanto aumenta el riesgo? – Dra. Paola Iturralde Rosas Priego
10:15 – 10:35 hrs. Neoplasia Ductual INSITU – Dr. Javier Gómezpedroso Rea
10:35 – 10:55 hrs. Efectos del estetrol en el cáncer de mama: Migración e invasión – Prof. Andrea Gennazzani
10:55 – 11:00 hrs. Conclusiones – Dra. Paola Iturralde Rosas Priego
"""

items[6].items[19].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Gerardo Aurioles López
9:35 – 9:55 hrs. Epidemiologia de la enfermedad pélvica. Un status quo al año 2017 – Dr. Alfredo Celis
9:55 – 10:15 hrs. Enfermedad pélvica subclínica e infertilidad. – Dr. Juan Carlos Hinojosa Cruz
10:15 – 10:35 hrs. De la tinción de gram a la biología molecular, en el diagnóstico etiológico de la enfermedad pélvica. – Dr. Xavier Ortiz Ibarra
10:35 – 10:55 hrs. Actualidades en el tratamiento de la enfermedad pélvica. – Dr. Emilio Valerio Castro
10:55 – 11:00 hrs. Conclusiones – Dr. Gerardo Aurioles López

"""

items[6].items[20].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dra. Miriam Negrín
9:35 – 9:55 hrs. La paciente peregrina: vulvovaginitis recurrente y mal tratada – Dra. Miriam Negrín
9:55 – 10:15 hrs. Mitos y realidades en la salud vulvovaginal – Dr. Xavier Ortiz Ibarra
10:15 – 10:35 hrs. El círculo vicioso del prurito vulvar – Dra. Alessandra Grazziotin
10:35 – 10:55 hrs. Galería de imágenes: dermatosis inflamatorias y vulvares – Dra. Elsa Díaz
10:55 – 11:00 hrs. Conclusiones – Dra. Miriam Negrín

"""

items[6].items[21].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dra. Margarita Castro
9:35 – 9:55 hrs. Consejería anticonceptiva en adolescentes. – Dra. Juana Serret
9:55 – 10:15 hrs. T de cobre en adolescentes, ¿es parte del pasado? – Dr. Jorge Peláez
10:15 – 10:35 hrs. Anticoncepción de emergencia. – Dra. Josefina Lira
10:35 – 10:55 hrs. Opciones novedosas de anticoncepción en adolescentes – Dra. Margarita Castro
10:55 – 11:00 hrs. Conclusiones – Dr. Jorge Peláez

"""

items[6].items[22].desc = """
9:30 – 9:35 hrs. Introducción y presentación – Dr. Douglas Jarquín
9:35 – 9:55 hrs. Implementacion de listas de chequeo en emergencia obstetricas – Dr. Paulo Meade
9:55 – 10:15 hrs. Manejo avanzados en acretismo placentario – Dr. Wendy Carcamo
10:15 – 10:35 hrs. Preeclampsia severa lejos del termino – Dr. Hector Bollati
10:35 – 10:55 hrs. Trauma obstétrico: implicaciones del cuidado intraparto – Dr. Cesar Favela Heredia
10:55 – 11:00 hrs. Conclusiones – Dr. Douglas Jarquín

"""

items[6].items[23].desc = """
9:30 – 9:35 hrs. Introducción – Dr. Jimmy Castañeda
9:35 – 9:55 hrs. ¿cuál debe ser la vía de la histerectomía en nuestra región? – Dr. Jimmy Castañeda
9:55 – 10:15 hrs. El manejo de la endometriosis profunda: ¿Quirúrgico o médico? – Dr. Pablo Ayroza
10:15 – 10:35 hrs. El legrado/raspado/curetaje. ¿se justifican? – Dr. Rafael Padrón
10:35 – 10:55 hrs. Morcelacion laparoscópica ¿es adecuada? – Dr. Leonel Alfonso Pedraza
10:55 – 11:00 hrs. Conclusiones – Dr. Jimmy Castañeda

"""
    
    
    //****************      Foros de discusión  ********************
    
    items[7].items[0].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Juan De Dios Maldonado
    11:20 – 11:40 hrs. Criterios de selección para rutas de suministro – Dra. Imelda Hernández Marín
    11:40 – 12:00 hrs. Riesgos/beneficios del regimen extendido de th: ¿cuando iniciar? Antes de 60 años o < 10 años de menopausia. – Dra. Cynthia Strunkel
    12:00 – 12:25 hrs. Foro de discusión coordinada – Doctor
    12:25 – 12:30 hrs. Conclusiones – Dr. Juan de Dios Maldonado
    
    """
    
    items[7].items[1].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Juan f. Romero Arauz
    11:20 – 11:40 hrs. Manejo conservador de preclampsia severa: se justifica – Dr. Baha Sibai
    11:40 – 12:00 hrs. Manejo conservador de preclampsia severa: no se justifica – Dr. Jack Ludmir
    12:00-12:30 hrs. Preguntas y conclusiones – Dr. Vicente Yu Chong y Dr. Juan F. Romero Arauz 
    """
    
    items[7].items[2].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dra. María Fernanda Escobar
    11:20 – 11:40 hrs. Reanimación hemostática en hemorragia obstétrica – Dr. Mauricio Vasco
    11:40 – 12:00 hrs. Manejo de sepsis en embarazo – Dra. María Fernanda Escobar
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dra. Isabel Lloyd
    12:25 – 12:30 hrs. Conclusiones – Dra. María Fernanda Escobar
    
    """
    
    items[7].items[3].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Rafael Padrón
    11:20 – 11:40 hrs. Corrección de prolapso apical: vaginal vs laparoscópico – Dr. Eduardo Carrera
    11:40 – 12:00 hrs. Miomectomía abierta o por laparoscopia. ¿Cuál es la vía adecuada? – Dr. Jimmy Castañeda
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dr. Pablo Aayroza y Dr. Jorge Sarrouf
    12:25 – 12:30 hrs. Conclusiones – Doctor 
    """
    
    items[7].items[4].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Miguel Ruoti
    11:20 – 11:40 hrs. Cesárea porque si: justificaciones – Dr. Ricardo Fescina
    11:40 – 12:00 hrs. Cesárea porque no: justificaciones – Dr. Jack Ludmir
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dra. María Teresa Figueroa
    12:25 – 12:30 hrs. Conclusiones – Dr. Miguel Ruoti
    
    """
    
    items[7].items[5].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Miguel Ángel Mancera Reséndiz
    11:20 – 11:40 hrs. Cirugía reproductiva, ¿el fin se acerca o permanece vigente? – Dr. Enrique Soto Medina
    11:40 – 12:00 hrs. Resultados de fertilización in vitro, realidades, nuevas indicaciones, reserva ovárica. – Dr. Benjamín Sandler
    12:00 – 12:25 hrs. Sesión de discusión y preguntas – Dr. Enrique Soto Medina y Dr. Benjamín Sandler
    12:25 – 12:30 hrs. Conclusión – Dr. Miguel Ángel Mancera Reséndiz
    
    """
    
    items[7].items[6].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. José Antonio Ayala Méndez
    11:20 – 11:40 hrs. Estrategias para la detección temprana de pacientes con riesgo de RCIU, y medidas de prevención que han mostrado evidencia – Dra. Sandra Acevedo Gallegos
    11:40 – 12:00 hrs. Diagnóstico y manejo de RCIU. ¿Qué nos falta? – Dr. Gian Carlo Mari
    12:00 – 12:25 hrs. Foro de discusión coordinada
    Participantes: Dr. Ricardo Fescina
    Dr. Giancarlo mari
    Dra. Sandra Acevedo Gallegos
    12:25 – 12:30 hrs. Conclusiones – Dr. José Antonio Ayala Méndez
    
    """
    
    items[7].items[7].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Héctor Bollati
    11:20 – 11:40 hrs. Monitoreo y seguimiento de “Near Miss” como indicador de la calidad de atención obstétrica. – Dr. Douglas Jarquín
    11:40 – 12:00 hrs. Factores críticos para la implementación de la movilidad materna extrema el la – Dr. Paulo Meade
    12:00 -12:25 hrs. Foro de discusión coordinada – Dr. Raúl bravo
    12:25 – 12:30 hrs. Conclusiones – Dr. Héctor Bollati
    
    """
    
    items[7].items[8].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Freddy González A.
    11:20 – 11:40 hrs. Biopsia de vellosidades coriales y amniocentesis – Dr. Juan Pérez Wulff
    11:40 – 12:00 hrs. Laparoscopia una nueva opción – Dr. Rogelio Cruz
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dr. Saulo Molina
    12:25 – 12:30 hrs. Conclusiones – Dr. Freddy González A.
    
    """
    
    items[7].items[9].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Pio Iván Gómez
    11:20 – 11:40 hrs. Los objetivos para el desarrollo sostenible. Rol del CLAP. – Dr. Susana Serruya
    11:40 – 12:00 hrs. Mortalidad materna y morbilidad materna grave. – Dr. Bremen de Mucio
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dr. Remy Uriona
    12:25 – 12:30 hrs. Conclusiones – Dr. Pio Iván Gómez
    
    """
    
    items[7].items[10].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Eduardo Sirahuen Neri Ruz
    11:20 – 11:40 hrs. Pros de la cirugia tradicional y riesgos de las mallas – Dr. Pablo Gutierrez Escoto
    11:40 – 12:00 hrs. Ventajas de las mallas y contras de la cirugia tradicional – Dr. Willy Davila
    12:00 – 12:25 hrs. Foro de discusión coordinada – Doctor
    12:25 – 12:30 hrs. Conclusiones – Dr. Eduardo Sirahuen Neri Ruz
    
    """
    
    items[7].items[11].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Carlos Quesnel
    11:20 – 11:40 hrs. Vía vaginal el error de la naturaleza – Dr. Miguel Ambas
    11:40 – 12:00 hrs. Vía abdominal el acierto del hombre – Dr. Samuel Karchmer K.
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dr. Miguel ambas y Dr. Samuel Karchmer K.
    12:25 – 12:30 hrs. Conclusiones – Dr. Carlos Quesnel
    
    """
    
    items[7].items[12].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Francisco Gago
    11:20 – 11:40 hrs. Prevención del cáncer ginecológico y mamario – Dr. Gustavo Ferriro Delgado
    11:40 – 12:00 hrs. Guías de diagnóstico y tratamiento del cáncer ginecológico – Dr. Diego Habich
    12:00 – 12:30 hrs. Conclusiones – Dra. Maribel Dextre y Dr. Gustavo Ferreiro Delgado
    
    """
    
    items[7].items[13].desc = """
    11:15 – 11:20 hrs. Introducción y presentación del foro – Dr. Juan Diego Villegas Echeverri
    11:20 – 11:40 hrs. Caso clínico interactivo – Dr. Jorge Carrillo y Dr. Juan Diego Villegas
    11:40 – 12:00 hrs. Sesión de discusión y preguntas – Dr. Jorge Carrillo y Dr. Juan Diego Villegas
    12:00 – 12:30 hrs. Conclusiones – Dra. Desiré Mostajo Flores y Dr. Samuel Seiref
    
    """
    
    items[7].items[14].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Henry Mateo Sanz
    11:20 – 11:40 hrs. Escrutinio para la selección de los anticonceptivos en mujeres  de 35 años y más.  – Dr. Marcelino Hernandez Valencia
    11:40 – 12:00 hrs. Criterios médicos de elegibilidad en pacientes con condiciones de riesgo más frecuentes – Dra. Josefina Lira Plascencia
    12:00 – 12:25 hrs. Foro de discusión coordinada – Doctor
    12:25 – 12:30 hrs. Conclusiones – Dr. Henry Mateo Sanz
    
    """
    
    items[7].items[15].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Carlos Salazar
    11:20 – 11:40 hrs. Preservación de tejido ovárico – Dr. Alberto Kably Ambe
    11:40 – 12:00 hrs. Preservación de gametos – Dr. Benjamín Sandler
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dr. Alberto Kably Ambe y Dr. Benjamín Sandler
    12:25 – 12:30 hrs. Conclusiones – Dr. Carlos Salazar
    
    """
    
    items[7].items[16].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dra. Tere Leis Márquez
    11:20 – 11:40 hrs. Resultado de las investigaciones que dice la evidencia – Dr. Salvador Espino y Sosa
    11:40 – 12:00 hrs. Aplicación clínica de los avances en nuestro medio – Dra. Sandra Acevedo Gallegos
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dr. Salvador Espino y Sosa, Dr. Juan Manuel Acuña
    12:25 – 12:30 hrs. Conclusiones – Dra. Tere Leis Márquez
    
    """
    
    items[7].items[17].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Ricardo Fescina
    11:20 – 11:40 hrs. Estado del arte en inmunización – Dr. Saad Omer
    11:40 – 12:00 hrs. Inmunización materna: políticas e implementación – Dra. Alba María Ropero Álvarez
    12:25-12:30 Conclusiones – Dr. Bremen de Mucio y Dr. Ricardo Fescina
    
    """
    
    items[7].items[18].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Miguel Ruoti
    11:20 – 11:40 hrs. Utilidad de progesterona en evitar prematuridad – Dr. José Antonio Ayala Méndez
    11:40 – 12:00 hrs. Pesarios para evitar el parto prematuro – Dr. Jack Ludmir
    12:00-12:30 preguntas y conclusiones – Dr. Miguel Ruoti y Dr. Alfredo Beitia
    
    """
    
    items[7].items[19].desc = """
    11:15 – 11:20 hrs. Introducción y presentación – Dr. Pedro Daguerre
    11:20 – 11:40 hrs. Situación actual del cáncer ginecológico – Dr. Gustavo Ferriro Delgado
    11:40 – 12:00 hrs. Formación del ginecólogo oncólogo – Dr. Diego Habich
    12:00 – 12:25 hrs. Foro de discusión coordinada – Dr. Pedro Daguerre y Dr. José Manuel Claros
    12:25 – 12:30 hrs. Conclusiones – Doctor
    
    """

    



    return items
}
