//
//  RadioViewStation.swift
//  AppleMusic
//
//  Created by MAC on 15.10.2021.
//

import SwiftUI

struct RadioViewStation: View {
    @State private var modelsRadioStation = ModelRadioStation.data
    var columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            Section(header: Text("Cтанции")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: MetricRadioViewStation.sizeFontText))
                        .padding(.horizontal, MetricRadioViewStation.paddingText))
            {
                ForEach(modelsRadioStation, id: \.id) { modelRadio in
                    HStack(spacing: MetricRadioViewStation.paddingHStack) {
                        Image(modelRadio.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: MetricRadioViewStation.widthImage)
                            .cornerRadius(MetricRadioViewStation.cornerRadiusImage)
                        VStack(alignment: .leading) {
                            Text(modelRadio.title)
                                .foregroundColor(.black)
                                .fontWeight(.regular)
                                .font(.system(size: MetricRadioViewStation.sizeFontTitle))
                            Text(modelRadio.subtitle)
                                .foregroundColor(.secondary)
                                .fontWeight(.regular)
                                .font(.system(size: MetricRadioViewStation.sizeFontSubtitle))
                        }
                    }
                    .padding(.horizontal, MetricRadioViewStation.paddingHStack)
                    .padding(.vertical, MetricRadioViewStation.paddingHStack)
                    Divider()
                        .padding(.leading, MetricRadioViewStation.paddingDividerLeading)
                        .padding(.trailing, MetricRadioViewStation.paddingDividerTrailing)
                }
            }
        }
    }
}

struct RadioViewStation_Previews: PreviewProvider {
    static var previews: some View {
        RadioViewStation()
    }
}

struct MetricRadioViewStation {
    
    static let sizeFontText: CGFloat = 20
    static let paddingText: CGFloat = 10
    static let spacingHStack: CGFloat = 10
    static let widthImage: CGFloat = 100
    static let cornerRadiusImage: CGFloat = 10
    static let sizeFontTitle: CGFloat = 18
    static let sizeFontSubtitle: CGFloat = 14
    static let paddingHStack: CGFloat = 10
    static let paddingDividerLeading: CGFloat = 120
    static let paddingDividerTrailing: CGFloat = 35
}
