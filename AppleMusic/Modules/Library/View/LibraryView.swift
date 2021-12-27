//
//  LibraryView.swift
//  AppleMusic
//
//  Created by MAC on 09.10.2021.
//

import SwiftUI

struct LibraryView: View {
    
    @State var showScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                if showScreen {
                    Library()
                } else {
                    MediatecaMusic()
                }
            }
            .environment(\.editMode, .constant(showScreen ? EditMode.active : EditMode.inactive))
            .navigationTitle("Медиатека")
            .toolbar(content: {
                Button(action: {
                    showScreen.toggle()
                }, label: {
                    if showScreen {
                        Text("Править")
                            .foregroundColor(.red)
                    } else {
                        Text("Готово")
                            .foregroundColor(.red)
                    }
                })
            })
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
