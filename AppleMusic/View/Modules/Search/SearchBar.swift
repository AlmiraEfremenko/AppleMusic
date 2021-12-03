//
//  SearchBar.swift
//  AppleMusic
//
//  Created by MAC on 21.11.2021.
//

import SwiftUI

struct SearchBar: View {
    @ObservedObject var modelSearch = ModelSearch()
    @ObservedObject var searchTitle = ModelSearch()
    @Binding var text: String
    @State private var isEditing = false
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            if !isEditing {
                HStack {
                    Text("Поиск")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .frame(width: 380, alignment: .leading)
                }
            }
            HStack {
                TextField(searchTitle.searchMediateca, text: $text)
                    .padding(12)
                    .padding(.horizontal, 25)
                    .background(Color(.black).brightness(0.1))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .onTapGesture {
                        self.isEditing = true
                        self.searchTitle.changeSearch()
                    }
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(.lightGray))
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 13)
                            
                            if isEditing {
                                Button(action: {
                                    self.text = ""
                                }, label: {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(Color(.lightGray))
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, 13)})}})
                if isEditing {
                    Button(action: {
                            self.isEditing = false
                            UIApplication.shared.dismissKeyboard()})
                    {
                        Text("Отменить")
                            .foregroundColor(.red)
                            .font(.system(size: 20))
                    }
                    .padding(.trailing, 0.5)
                    .transition(.move(edge: .trailing))
                    .animation(.spring())
                }
            }
            .padding(8)
            if isEditing {
                SearchSongsMediateca()
                if text.isEmpty {
                    HStack(spacing: 170) {
                        Text("Недавние поиски")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 17))
                        Button(action: {
                            self.showDetails.toggle()
                        }, label: {
                            Text("Очистить")
                                .fontWeight(.bold)
                                .font(.system(size: 16))
                                .foregroundColor(.red)})
                    }
                    .padding(.top, 23)
                }
                Divider()
                SearchAlbumSongs(text: $text)
            }
            else {
                SearchViewCategories()
            }
        }
        .offset(y: 30)
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
