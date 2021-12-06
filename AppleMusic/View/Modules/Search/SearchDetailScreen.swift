//
//  SearchDetailScreen.swift
//  AppleMusic
//
//  Created by MAC on 27.11.2021.
//

import SwiftUI

struct SearchDetailScreen: View {
    @ObservedObject var modelSearch = ModelSearch()
    @State private var rows = [
        GridItem(.fixed(MetricDetailScreen.sizeItemInRow))]
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows) {
                            ForEach(modelSearch.modelsRadio, id: \.id) { modelRadio in
                                VStack(alignment: .leading) {
                                    Text(modelRadio.title)
                                        .foregroundColor(.secondary)
                                        .fontWeight(.medium)
                                        .font(.system(size: MetricDetailScreen.sizeFontText))
                                    Text(modelRadio.title)
                                        .foregroundColor(.black)
                                        .fontWeight(.regular)
                                        .font(.system(size: MetricDetailScreen.sizeFontTextTitle))
                                    Text(modelRadio.subtitle)
                                        .foregroundColor(.secondary)
                                        .fontWeight(.medium)
                                        .font(.system(size: MetricDetailScreen.sizeFontTextSubtitle))
                                    Spacer()
                                        .frame(height: MetricDetailScreen.heightFrameSpacer)
                                    Image(modelRadio.image)
                                        .resizable()
                                        .frame(width: MetricDetailScreen.widthFrameImage)
                                        .cornerRadius(MetricDetailScreen.cornerRadiusFrameImage)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .padding(.top, MetricDetailScreen.paddingHStack)
                HStack(spacing: MetricDetailScreen.spacingHStack) {
                    Text("Станции")
                        .font(.system(size: MetricDetailScreen.sizeFontTextTitle))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                    Text("Cм.все")
                        .font(.system(size: MetricDetailScreen.sizeFontTextFollow))
                        .foregroundColor(.red)
                        .fontWeight(.medium)
                }
                HStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows) {
                            ForEach(modelSearch.models, id: \.id) { modelRadio in
                                Image(modelRadio.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: MetricDetailScreen.widthFrameImageHorizontal)
                                    .cornerRadius(MetricDetailScreen.cornerRadiusFrameImage)
                            }
                        }
                        .padding()
                    }
                }
                .frame (height: MetricDetailScreen.heightFrameHStacke)
                .offset(y: MetricDetailScreen.offsetHStacke)
            }
            .offset(y: MetricDetailScreen.offsetVStacke)
            .navigationTitle("Зимнее время")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        print("Нажать подробнее")
                    }, label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.red)
                    })
            )
        }
    }
}

struct SearchDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailScreen()
    }
}

struct MetricDetailScreen {
    
    static let sizeItemInRow: CGFloat = 320
    static let sizeFontText: CGFloat = 18
    static let sizeFontTextTitle: CGFloat = 23
    static let sizeFontTextSubtitle: CGFloat = 20
    static let heightFrameSpacer: CGFloat = 15
    static let widthFrameImage: CGFloat = 380
    static let cornerRadiusFrameImage: CGFloat = 10
    static let paddingHStack: CGFloat = 20
    static let spacingHStack: CGFloat = 221
    static let sizeFontTextFollow: CGFloat = 16
    static let widthFrameImageHorizontal: CGFloat = 185
    static let heightFrameHStacke: CGFloat = 200
    static let offsetHStacke: CGFloat = -12
    static let offsetVStacke: CGFloat = -20
}
