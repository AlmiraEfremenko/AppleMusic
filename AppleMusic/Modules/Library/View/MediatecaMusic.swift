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
                .fontWeight(.bold)
            Text("Здесь появится купленная Вами в iTunes Store музыка")
                .font(.title3)
                .padding([.leading, .trailing], MetricMediateca.paddingText)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(height: MetricMediateca.heightFrame)
        .navigationTitle("Медиатека")
    }
}

struct MediatecaMusic_Previews: PreviewProvider {
    static var previews: some View {
        MediatecaMusic()
    }
}

struct MetricMediateca {
    
    static let paddingText: CGFloat = 28
    static let heightFrame: CGFloat = 600
}
