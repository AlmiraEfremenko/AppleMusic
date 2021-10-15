//
//  RadioViewPlaylist.swift
//  AppleMusic
//
//  Created by MAC on 15.10.2021.
//

import SwiftUI

struct RadioViewPlaylist: View {
    
    @State private var modelsRadio = ModelRadio.data
    
    var rows = [
        GridItem(.fixed(320))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(modelsRadio, id: \.id) { modelRadio in
                    VStack(alignment: .leading) {
                        Text(modelRadio.title)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: 16))
                        Text(modelRadio.subtitle)
                            .foregroundColor(.black)
                            .fontWeight(.regular)
                            .font(.system(size: 25))
                        Spacer()
                            .frame(height: 10)
                        Image(modelRadio.image)
                            .resizable()
                            .frame(width: 370)
                    }
                }
            }
        }
    }
}

struct RadioViewPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        RadioViewPlaylist()
    }
}
