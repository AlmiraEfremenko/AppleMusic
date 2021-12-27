//
//  Model.swift
//  AppleMusic
//
//  Created by MAC on 06.10.2021.
//

import SwiftUI

struct Model: Identifiable, Hashable{
    let id = UUID()
    var image: String
    var title: String
}

extension Model {
    
    static let data = [
        
        Model(image: "music.note.list", title: "Плейлисты"),
        Model(image: "music.mic", title: "Артисты"),
        Model(image: "rectangle.stack", title: "Альбомы"),
        Model(image: "music.note", title: "Песни"),
        Model(image: "airplayvideo", title: "Телешоу и фильмы"),
        Model(image: "tv.music.note.fill", title: "Видеоклипы"),
        Model(image: "guitars", title: "Жанры"),
        Model(image: "doc", title: "Сборники"),
        Model(image:  "music.note", title: "Авторы"),
        Model(image: "square.and.arrow.down", title: "Загружено"),
        Model(image: "house", title: "Коллекция")
    ]
}
