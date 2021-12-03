//
//  SearchSongs.swift
//  AppleMusic
//
//  Created by MAC on 23.11.2021.
//

import SwiftUI

struct SearchSongsMediateca: View {
    @State var isShowRecentSearch = false
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            HStack(spacing: 0.1) {
                Button(action: {
                    self.showDetails.toggle()
                }, label: {
                    Text("Apple Music")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                })
                .frame(width: 196, height: 43, alignment: .center)
                .background(Color(.darkGray))
                .cornerRadius(8)
                Button(action: {
                    self.showDetails.toggle()
                }, label: {
                    Text("Ваша Медиатека")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                })
                .frame(width: 196, height: 43, alignment: .center)
                .background(Color(.black).brightness(0.1))
                .cornerRadius(8)
            }
        }
    }
}

struct SearchSongs_Previews: PreviewProvider {
    static var previews: some View {
        SearchSongsMediateca()
    }
}
