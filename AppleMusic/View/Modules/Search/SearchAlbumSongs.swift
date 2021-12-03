//
//  SearchAlbumSongs.swift
//  AppleMusic
//
//  Created by MAC on 25.11.2021.
//

import SwiftUI

struct SearchAlbumSongs: View {
    @State private var columns = [
        GridItem(.flexible())]
    @ObservedObject var modelSearch = ModelSearch()
    @Binding var text: String
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            ForEach(modelSearch.models.filter({"\($0)".contains(text) || text.isEmpty }), id: \.id) { item in
                HStack(spacing: 10) {
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text("\(item.title)")
                            .fontWeight(.medium)
                            .font(.system(size: 17))
                        Text("\(item.subtitle)")
                            .foregroundColor(.gray)
                            .font(.system(size: 13))
                    }
                    Spacer()
                    Button(action: {
                        print("Скачать")
                    }, label: {
                        Image(systemName: "arrow.down.circle.fill")
                            .foregroundColor(.secondary)
                            .padding(.top)
                            .padding(.trailing, 5)
                    })
                    Button(action: {
                        print("Детали")
                    }, label: {
                        Image(systemName: "ellipsis")
                            .padding(.top)
                            .padding(.trailing)
                            .foregroundColor(.gray)
                    })
                }
                Divider()
                    .padding(8)
            }
            LazyVGrid(columns: columns, alignment: .leading) {
                ForEach(modelSearch.modelsRadio.filter({"\($0)".contains(text) || text.isEmpty }), id: \.id) { item in
                    HStack(spacing: 10) {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70)
                            .cornerRadius(10)
                        VStack(alignment: .leading) {
                            Text("\(item.title)")
                                .fontWeight(.medium)
                                .font(.system(size: 17))
                            Text("\(item.subtitle)")
                                .foregroundColor(.gray)
                                .font(.system(size: 13))
                        }
                        Spacer()
                        Button(action: {
                            print("Перейти")
                        }, label: {
                            Image(systemName: "chevron.right")
                                .padding(.top)
                                .padding(.trailing)
                                .foregroundColor(.gray)
                        })
                    }
                    Divider()
                        .padding(8)
                }
            }
        }
        .padding(6)
    }
}

struct SearchAlbumSongs_Previews: PreviewProvider {
    static var previews: some View {
        SearchAlbumSongs(text: .constant(""))
    }
}
