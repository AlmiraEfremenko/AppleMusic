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
        GridItem(.fixed(MetricRadioViewPlaylist.sizeItem))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(modelsRadio, id: \.id) { modelRadio in
                    VStack(alignment: .leading) {
                        Text(modelRadio.titleRadiostation)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: MetricRadioViewPlaylist.sizeFontTextSubtitle))
                        Text(modelRadio.title)
                            .foregroundColor(.black)
                            .fontWeight(.regular)
                            .font(.system(size: MetricRadioViewPlaylist.sizeFontTextTitle))
                        Text(modelRadio.subtitle)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: MetricRadioViewPlaylist.sizeFontTextSubtitle))
                        
                        Spacer()
                            .frame(height: MetricRadioViewPlaylist.heightFrameSpacer)
                        Image(modelRadio.image)
                            .resizable()
                            .frame(width: MetricRadioViewPlaylist.widthFrameImage)
                            .cornerRadius(MetricRadioViewPlaylist.cornerRadiusImage)
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

struct MetricRadioViewPlaylist {
    
    static let sizeItem: CGFloat = 320
    static let sizeFontTextTitle: CGFloat = 23
    static let sizeFontTextSubtitle: CGFloat = 18
    static let heightFrameSpacer: CGFloat = 15
    static let widthFrameImage: CGFloat = 370
    static let cornerRadiusImage: CGFloat = 10
}
