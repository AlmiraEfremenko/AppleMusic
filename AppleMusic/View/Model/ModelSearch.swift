//
//  ModelSearch.swift
//  AppleMusic
//
//  Created by MAC on 21.11.2021.
//

import SwiftUI

class ModelSearch: ObservableObject {
    
    @Published var searchMediateca = "Ваша Медиатека"
    @Published var models = ModelRadioStation.data
    @Published var modelsRadio = ModelRadio.data
    
    func changeSearch() {
        self.searchMediateca = "Альбомы, песни и др..."
    }
}
