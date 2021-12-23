//
//  TabBar.swift
//  AppleMusic
//
//  Created by MAC on 05.10.2021.
//

import SwiftUI

struct TabViewAppleMusic: View {
    @State var expand = false
    @Namespace var animation
   
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Медиатека")
                    }
               RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            PlayerView(animation: animation, expand: $expand)
        })
    }
}
struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAppleMusic()
    }
}
