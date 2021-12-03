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
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    SearchBar(text: $text)
                }
                .padding(3)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        .environment(\.colorScheme, .dark)
        .accentColor(Color(.red))
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
