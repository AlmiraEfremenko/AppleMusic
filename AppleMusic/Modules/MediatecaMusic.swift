//
//  MediatecaMusic.swift
//  AppleMusic
//
//  Created by MAC on 07.10.2021.
//

import SwiftUI

struct MediatecaMusic: View {
    var body: some View {
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
        .frame(height: 600)
        .navigationTitle("Медиатека")
        HStack {
            TabBar()
        }
    }
}

struct MediatecaMusic_Previews: PreviewProvider {
    static var previews: some View {
        MediatecaMusic()
    }
}
