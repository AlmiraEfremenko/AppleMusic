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
        GridItem(.adaptive(minimum: MetricSearchViewCategories.sizeItemMinimum, maximum: MetricSearchViewCategories.sizeItemMaximum))
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            Section(header: Text("Поиск по категориям")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: MetricSearchViewCategories.sizeFontText))
                        .padding(MetricSearchViewCategories.paddingText))
            {
                ForEach(modelSearch.models, id: \.id) {
                    modelSearch in
                    NavigationLink(destination: SearchDetailScreen()){
                        Image(modelSearch.image)
                            .resizable()
                            .frame(width: MetricSearchViewCategories.widthImage, height: MetricSearchViewCategories.heightImage)
                            .cornerRadius(MetricSearchViewCategories.cornerRadiusImage)
                    }
                }
                .padding(MetricSearchViewCategories.paddingText)
            }
        }
    }
}

struct SearchViewCategories_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewCategories()
    }
}

struct MetricSearchViewCategories {
    
    static let sizeItemMinimum: CGFloat = 200
    static let sizeItemMaximum: CGFloat = 195
    static let sizeFontText: CGFloat = 20
    static let paddingText: CGFloat = 10
    static let widthImage: CGFloat = 190
    static let heightImage: CGFloat = 140
    static let cornerRadiusImage: CGFloat = 10
}
