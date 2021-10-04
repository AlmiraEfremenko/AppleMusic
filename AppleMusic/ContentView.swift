//
//  ContentView.swift
//  AppleMusic
//
//  Created by MAC on 04.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    
                    VStack {
                        Text("Ищите свою музыку?")
                            .font(.title)
                        Text("Здесь появится купленная Вами в iTunes Store музыка")
                            .font(.title3)
                            .padding([.leading, .trailing], 28)
                            .foregroundColor(.secondary)
                            .multilineTextAlignment(.center)
                    }
                    .padding()
                    .frame(height: 500)
                    
                    HStack {
                        Image("картинка")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .scaledToFit()
                        Text("Justin Bieber - Peaches")
                        Spacer()
                        Image(systemName: "play.fill")
                        Image(systemName: "forward.fill")
                    }
                    .padding()
                    .navigationTitle("Медиатека")
                    .navigationBarItems(trailing:
                                            NavigationLink(
                                                destination: Library(),
                                                label: {
                                                    Text("Править").foregroundColor(Color.red)
                                                }))
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Медиатека")
            }
            
            Text("Радио")
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            
            Text("Поиск")
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Поиск")
                }
        }
    }
}

struct Library: View {
    var body: some View {
        Text("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
