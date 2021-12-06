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
            HStack(spacing: MetricSearchSongsMedia.spacingHStack) {
                Button(action: {
                    self.showDetails.toggle()
                }, label: {
                    Text("Apple Music")
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                })
                .frame(width: MetricSearchSongsMedia.widthFrameButton, height: MetricSearchSongsMedia.heightFrameButton, alignment: .center)
                .background(Color(.lightGray).brightness(Double(MetricSearchSongsMedia.backgroundButtonApple)))
                .cornerRadius(MetricSearchSongsMedia.cornerRadiusButton)
                Button(action: {
                    self.showDetails.toggle()
                }, label: {
                    Text("Ваша Медиатека")
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                })
                .frame(width: MetricSearchSongsMedia.widthFrameButton, height: MetricSearchSongsMedia.heightFrameButton, alignment: .center)
                .background(Color(.lightGray).brightness(Double(MetricSearchSongsMedia.backgroundButtonMedia)))
                .cornerRadius(MetricSearchSongsMedia.cornerRadiusButton)
            }
        }
    }
}

struct SearchSongs_Previews: PreviewProvider {
    static var previews: some View {
        SearchSongsMediateca()
    }
}

struct MetricSearchSongsMedia {
    
    static let spacingHStack: CGFloat = 0.1
    static let widthFrameButton: CGFloat = 196
    static let heightFrameButton: CGFloat = 43
    static let cornerRadiusButton: CGFloat = 8
    static let backgroundButtonMedia: CGFloat = 0.1
    static let backgroundButtonApple: CGFloat = 0.2
}
