//
//  SearchViewCategories.swift
//  AppleMusic
//
//  Created by MAC on 21.11.2021.
//

import SwiftUI

struct SearchViewCategories: View {
    @ObservedObject var modelSearch = ModelSearch()
    var columns = [
        GridItem(.adaptive(minimum: 200, maximum: 195))]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            Section(header: Text("Поиск по категориям")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(10))
            {
                ForEach(modelSearch.models, id: \.id) {
                    modelSearch in
                    NavigationLink(destination: SearchDetailScreen()){
                        Image(modelSearch.image)
                            .resizable()
                            .frame(width: 190, height: 140)
                            .cornerRadius(10)
                    }}
                    .padding(10)
            }
        }
    }
}

struct SearchViewCategories_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewCategories()
    }
}
