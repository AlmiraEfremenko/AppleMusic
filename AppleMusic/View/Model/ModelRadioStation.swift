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
        ModelRadioStation(image: "популярное", title: "Популярное", subtitle: "То, что слушают прямо сейчас."),
        ModelRadioStation(image: "classic", title: "Классика", subtitle: "Выдающиеся образцы жанра."),
        ModelRadioStation(image: "chill1", title: "Для расслабления", subtitle: "Электронная медитация."),
        ModelRadioStation(image: "rock", title: "Классика рokа", subtitle: "Гитарный звук."),
        ModelRadioStation(image: "hip-hop", title: "Хип-хоп", subtitle: "Идеальные биты."),
        ModelRadioStation(image: "dfmdisco90", title: "Музыка 90-х", subtitle: "Зажигай."),
        ModelRadioStation(image: "rnb", title: "RnB", subtitle: "Будь в движении.")
    ]
}
