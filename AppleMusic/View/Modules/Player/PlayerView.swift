//
//  Player.swift
//  AppleMusic
//
//  Created by MAC on 05.10.2021.
//

import SwiftUI

struct PlayerView: View {
    
    @State var showDetails = false
    
    var body: some View {
        HStack {
            Image("картинка")
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFit()
            Text("Justin Bieber - Peaches")
            Spacer()
            
            Button(action: {
                self.showDetails.toggle()
            }, label: {
                Image(systemName: "play.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 18, height: 18)
                    .scaledToFit()
            })
            
            Spacer()
                .frame(width: 13)
            
            Button(action: {
                self.showDetails.toggle()
            }, label: {
                Image(systemName: "forward.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 25, height: 20)
                    .scaledToFit()
            })
            .padding(5)
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

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
