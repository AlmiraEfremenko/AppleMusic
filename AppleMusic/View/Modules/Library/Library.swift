//
//  Library.swift
//  AppleMusic
//
//  Created by MAC on 06.10.2021.
//

import SwiftUI

struct Library: View {
    
    @State var isEditMode = EditMode.active
    @State private var models = Model.data
    @State private var multiSelection = Set<UUID>()
    
    var body: some View {
        VStack {
            VStack {
                List (selection: $multiSelection) {
                    ForEach(models, id: \.id) { model in
                        HStack {
                            Image(systemName: model.image)
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.red)
                                .frame(width: MetricLibrary.widthImage, height: MetricLibrary.heightImage)
                                .padding(MetricLibrary.paddingImage)
                            Text(model.title)
                                .foregroundColor(.black)
                                .font(.system(size: MetricLibrary.sizeFontText))
                                .fontWeight(.medium)
                        }
                    }
                    .onMove(perform: move)
                }
                .frame(height: MetricLibrary.heightFrame)
                .listStyle(PlainListStyle())
            }
            .environment(\.editMode, $isEditMode)
        }
    }
    
    func move(from source: IndexSet, to destination: Int) {
        models.move(fromOffsets: source, toOffset: destination)
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}

struct MetricLibrary {
    
    static let widthImage: CGFloat = 25
    static let heightImage: CGFloat = 25
    static let paddingImage: CGFloat = 9
    static let sizeFontText: CGFloat = 23
    static let heightFrame: CGFloat = 640
}
