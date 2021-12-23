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
                    .padding(.leading, MetricRadioView.paddingDividerLeading)
                    .padding(.trailing, MetricRadioView.paddingDividerTrailing)
                
                VStack {
                    RadioViewPlaylist()
                        .padding(MetricRadioView.paddingView)
                    
                    Divider()
                        .padding(.leading, MetricRadioView.paddingDividerLeading)
                        .padding(.trailing, MetricRadioView.paddingDividerTrailing)
                    
                    Spacer()
                        .frame(height: MetricRadioView.heightFrameSpacer)
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

struct MetricRadioView {
    
    static let paddingDividerLeading: CGFloat = 11
    static let paddingDividerTrailing: CGFloat = 35
    static let heightFrameSpacer: CGFloat = 20
    static let paddingView: CGFloat = 10
}
