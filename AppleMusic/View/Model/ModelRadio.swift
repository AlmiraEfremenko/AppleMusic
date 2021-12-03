//
//  ModelRadio.swift
//  AppleMusic
//
//  Created by MAC on 14.10.2021.
//

import SwiftUI


struct ModelRadio: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var subtitle: String
    var titleRadiostation: String
   
}

extension ModelRadio {
    
    static let data = [
        
        ModelRadio(image: "бибер",
                   title: "Коллекция радиошоу Beats 1",
                   subtitle: "Новый альбом",
                   titleRadiostation: "Эксклюзив"),
        ModelRadio(image: "популярное",
                   title: "Популярное",
                   subtitle: "То, что слушают прямо сейчас",
                   titleRadiostation: "Избранная радиостанция"),
        ModelRadio(image: "classic",
                   title: "Классика",
                   subtitle: "Выдающиеся образцы жанра",
                   titleRadiostation: "Избранная радиостанция"),
        ModelRadio(image: "chill1",
                   title: "Для расслабления",
                   subtitle: "Электронная медитация",
                   titleRadiostation: "Избранная радиостанция"),
        ModelRadio(image: "rock",
                   title: "Классика рokа",
                   subtitle: "Гитарный звук",
                   titleRadiostation: "Избранная радиостанция"),
        ModelRadio(image: "hip-hop",
                   title: "Hip-Hop",
                   subtitle: "Ideal bit",
                   titleRadiostation: "Избранная радиостанция"),
        ModelRadio(image: "dfmdisco90",
                   title: "Музыка 90-х",
                   subtitle: "Зажигай",
                   titleRadiostation: "Избранная радиостанция"),
        ModelRadio(image: "rnb",
                   title: "RnB",
                   subtitle: "Light up",
                   titleRadiostation: "Избранная радиостанция")
    ]
}
