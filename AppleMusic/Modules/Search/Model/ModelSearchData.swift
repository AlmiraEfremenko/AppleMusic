//
//  ModelSearchData.swift
//  AppleMusic
//
//  Created by MAC on 16.12.2021.
//

import UIKit

struct ModelSearchData {
    let image: UIImage
}

extension ModelSearchData {
    
    static var data = [
        ModelSearchData(image: UIImage(named: "chill1") ?? .add),
        ModelSearchData(image: UIImage(named: "classic") ?? .add),
        ModelSearchData(image: UIImage(named: "популярное") ?? .add),
        ModelSearchData(image: UIImage(named: "dfmdisco90") ?? .add),
        ModelSearchData(image: UIImage(named: "rock") ?? .add),
        ModelSearchData(image: UIImage(named: "rnb") ?? .add),
        ModelSearchData(image: UIImage(named: "hip-hop") ?? .add),
        ModelSearchData(image: UIImage(named: "бибер") ?? .add)
    ]
}
