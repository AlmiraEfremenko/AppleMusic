//
//  RadioView.swift
//  AppleMusic
//
//  Created by MAC on 14.10.2021.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                VStack {
                    RadioViewPlaylist()
                        .padding(10)
                    Divider()
                    Spacer()
                        .frame(height: 20)
                    RadioViewStation()
                }
            }
            .navigationTitle("Радио")
            .navigationBarHidden(false)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
