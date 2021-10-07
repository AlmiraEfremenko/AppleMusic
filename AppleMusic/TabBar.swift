//
//  TabBar.swift
//  AppleMusic
//
//  Created by MAC on 05.10.2021.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            TabView {
                Text("")
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Медиатека")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            Player()
        })
    }
}
