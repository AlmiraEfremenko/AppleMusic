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
        GridItem(.fixed(320))]
    
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
                                        .font(.system(size: 18))
                                    Text(modelRadio.title)
                                        .foregroundColor(.white)
                                        .fontWeight(.regular)
                                        .font(.system(size: 23))
                                    Text(modelRadio.subtitle)
                                        .foregroundColor(.secondary)
                                        .fontWeight(.medium)
                                        .font(.system(size: 20))
                                    Spacer()
                                        .frame(height: 15)
                                    Image(modelRadio.image)
                                        .resizable()
                                        .frame(width: 380)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        .padding()
                    }
                }
                .padding(.top, 20)
                HStack(spacing: 221) {
                    Text("Станции")
                        .font(.system(size: 23))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    Text("Cм.все")
                        .font(.system(size: 16))
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
                                    .frame(width: 185)
                                    .cornerRadius(10)
                            }
                        }
                        .padding()
                    }
                }
                .frame (height: 200)
                .offset(y: -12)
            }
            .offset(y: -20)
            .navigationTitle("Зимнее время")
            .navigationBarItems(
                trailing:
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
