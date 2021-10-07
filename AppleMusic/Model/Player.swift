//
//  Player.swift
//  AppleMusic
//
//  Created by MAC on 05.10.2021.
//

import SwiftUI

struct Player: View {
    var body: some View {
        HStack {
            Image("картинка")
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFit()
            Text("Justin Bieber - Peaches")
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "play.fill")
                    .foregroundColor(.black)
            })
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "forward.fill")
                    .foregroundColor(.black)
            })
        }
        .padding()
        .frame(height: 70)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            })
        .offset(y: -48)
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
