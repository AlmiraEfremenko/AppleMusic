//
//  SearchView.swift
//  AppleMusic
//
//  Created by MAC on 21.11.2021.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var modelSearch = ModelSearch()
    @State private var text = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $text, isEditing: $isEditing)
                if !isEditing {
                    NavigationLink(
                        destination: SearchDetailScreen(),
                        label: {
                            SearchViewRepresentable()
                        })
                } else {
                    SearchAlbumSongs(text: $text)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .accentColor(Color(.red))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct MetricSearchView {
    
    static let paddingSearchView: CGFloat = 5
}
