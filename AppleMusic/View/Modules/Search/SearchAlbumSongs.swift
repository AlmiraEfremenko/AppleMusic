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
        ScrollView {
            LazyVGrid(columns: columns, alignment: .leading) {
                ForEach(modelSearch.models.filter({"\($0)".contains(text) || text.isEmpty }), id: \.id) { item in
                    HStack(spacing: MetricButtonAlbumsMedia.spacingHStack) {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: MetricButtonAlbumsMedia.widthFrameImage)
                            .cornerRadius(MetricButtonAlbumsMedia.cornerRadiusImage)
                        VStack(alignment: .leading) {
                            Text("\(item.title)")
                                .fontWeight(.medium)
                                .font(.system(size: MetricButtonAlbumsMedia.sizeFontTitle))
                            Text("\(item.subtitle)")
                                .foregroundColor(.gray)
                                .font(.system(size: MetricButtonAlbumsMedia.sizeFontSubTitle))
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            print("Скачать")
                        }, label: {
                            Image(systemName: "arrow.down.circle.fill")
                                .foregroundColor(.secondary)
                                .padding(.top)
                                .padding(.trailing, MetricButtonAlbumsMedia.paddingImage)
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
                        .padding(MetricButtonAlbumsMedia.paddingDivider)
                }
                
                LazyVGrid(columns: columns, alignment: .leading) {
                    ForEach(modelSearch.modelsRadio.filter({"\($0)".contains(text) || text.isEmpty }), id: \.id) { item in
                        HStack(spacing: MetricButtonAlbumsMedia.spacingHStack) {
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: MetricButtonAlbumsMedia.widthFrameImage)
                                .cornerRadius(MetricButtonAlbumsMedia.cornerRadiusImage)
                            VStack(alignment: .leading) {
                                Text("\(item.title)")
                                    .fontWeight(.medium)
                                    .font(.system(size: MetricButtonAlbumsMedia.sizeFontTitle))
                                Text("\(item.subtitle)")
                                    .foregroundColor(.gray)
                                    .font(.system(size: MetricButtonAlbumsMedia.sizeFontSubTitle))
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
                            .padding(MetricButtonAlbumsMedia.paddingDivider)
                    }
                }
            }
            .padding(MetricButtonAlbumsMedia.paddingLazyVGride)
        }
    }
}
struct SearchAlbumSongs_Previews: PreviewProvider {
    static var previews: some View {
        SearchAlbumSongs(text: .constant(""))
    }
}

struct MetricButtonAlbumsMedia {
    
    static let spacingHStack: CGFloat = 10
    static let widthFrameImage: CGFloat = 70
    static let cornerRadiusImage: CGFloat = 10
    static let sizeFontTitle: CGFloat = 17
    static let sizeFontSubTitle: CGFloat = 13
    static let paddingImage: CGFloat = 5
    static let paddingDivider: CGFloat = 8
    static let paddingLazyVGride: CGFloat = 6
}
