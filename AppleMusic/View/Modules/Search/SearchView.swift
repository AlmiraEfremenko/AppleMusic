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
    @State var isIntegration = false
    
    var body: some View {
        NavigationView {
            SearchBar(text: $text)
                .padding(MetricSearchView.paddingSearchView)
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
    
    static let paddingSearchView: CGFloat = 3
}
