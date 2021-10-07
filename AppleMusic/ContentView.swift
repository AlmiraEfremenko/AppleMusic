//
//  ContentView.swift
//  AppleMusic
//
//  Created by MAC on 04.10.2021.
//

import SwiftUI

struct ContentView: View {
    
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
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
