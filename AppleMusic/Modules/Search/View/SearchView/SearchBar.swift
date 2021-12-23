//
//  SearchBar.swift
//  AppleMusic
//
//  Created by MAC on 21.11.2021.
//

import SwiftUI

struct SearchBar: View {
    @ObservedObject var searchTitle = ModelSearch()
    @Binding var text: String
    @Binding var isEditing: Bool
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            if !isEditing {
                HStack {
                    Text("Поиск")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .frame(width: MetricSearchBar.widthFrameText, alignment: .leading)
                }
            }
            
            HStack {
                TextField(searchTitle.searchMediateca, text: $text)
                    .padding(MetricSearchBar.paddingTextField)
                    .padding(.horizontal, MetricSearchBar.paddingTextFieldHorizontal)
                    .background(Color(.lightGray).brightness(Double(MetricSearchBar.backgroundTextField)))
                    .foregroundColor(.black)
                    .cornerRadius(MetricSearchBar.cornerRadiusTextField)
                    .onTapGesture {
                        self.isEditing = true
                        self.searchTitle.changeSearch()
                    }
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(.gray))
                                .frame(minWidth: MetricSearchBar.frameMinWidthImage, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, MetricSearchBar.paddingFrameImage)
                            
                            if isEditing {
                                Button(action: {
                                    self.text = ""
                                }, label: {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(Color(.white))
                                        .frame(minWidth: MetricSearchBar.frameMinWidthImage, maxWidth: .infinity, alignment: .trailing)
                                        .padding(.trailing, MetricSearchBar.paddingFrameImage)
                                })
                            }
                        })
                
                if isEditing {
                    Button(action: {
                            text = ""
                            self.isEditing = false
                            UIApplication.shared.dismissKeyboard()})
                    {
                        Text("Отменить")
                            .foregroundColor(.red)
                            .font(.system(size: MetricSearchBar.sizeFontText))
                    }
                    .padding(.trailing, MetricSearchBar.paddingButton)
                    .transition(.move(edge: .trailing))
                    .animation(.spring())
                }
            }
            .padding(MetricSearchBar.paddingHStack)
            
            if isEditing {
                SearchSongsMediateca()
                if text.isEmpty {
                    HStack(spacing: MetricSearchBar.spacingHStack) {
                        Text("Недавние поиски")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .font(.system(size: MetricSearchBar.sizeFontTextRecentSearch))
                        Button(action: {
                            self.showDetails.toggle()
                        }, label: {
                            Text("Очистить")
                                .fontWeight(.bold)
                                .font(.system(size: MetricSearchBar.sizeFontTextDelete))
                                .foregroundColor(.red)})
                    }
                    .padding(.top, MetricSearchBar.paddingHStackResentDelete)
                }
                Divider()
            }
        }
    }
}

extension UIApplication {
    func dismissKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""), isEditing: .constant(false))
    }
}

struct MetricSearchBar {
    
    static let widthFrameText: CGFloat = 380
    static let paddingTextField: CGFloat = 12
    static let paddingTextFieldHorizontal: CGFloat = 25
    static let backgroundTextField: CGFloat = 0.1
    static let cornerRadiusTextField: CGFloat = 10
    static let frameMinWidthImage: CGFloat = 0
    static let paddingFrameImage: CGFloat = 13
    static let sizeFontText: CGFloat = 20
    static let paddingButton: CGFloat = 0.5
    static let paddingHStack: CGFloat = 8
    static let spacingHStack: CGFloat = 170
    static let sizeFontTextRecentSearch: CGFloat = 17
    static let sizeFontTextDelete: CGFloat = 16
    static let paddingHStackResentDelete: CGFloat = 23
}
