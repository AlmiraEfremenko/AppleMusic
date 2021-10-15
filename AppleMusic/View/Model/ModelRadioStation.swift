//
//  ModelRadioStation.swift
//  AppleMusic
//
//  Created by MAC on 15.10.2021.
//

import SwiftUI


struct ModelRadioStation: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var subtitle: String
}

extension ModelRadioStation {
    
    static let data = [
        ModelRadio(image: "популярное", title: "Популярное", subtitle: "То, что слушают прямо сейчас."),
        ModelRadio(image: "classic", title: "Классика", subtitle: "Выдающиеся образцы жанра."),
        ModelRadio(image: "chill1", title: "Для расслабления", subtitle: "Электронная медитация."),
        ModelRadio(image: "rock", title: "Классика рokа", subtitle: "Гитарный звук."),
        ModelRadio(image: "hip-hop", title: "Хип-хоп", subtitle: "Идеальные биты."),
        ModelRadio(image: "dfmdisco90", title: "Музыка 90-х", subtitle: "Зажигай."),
        ModelRadio(image: "rnb", title: "RnB", subtitle: "Будь в движении.")
    ]
}
