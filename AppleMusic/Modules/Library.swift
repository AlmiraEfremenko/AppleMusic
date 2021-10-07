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
                                .frame(width: 25, height: 25)
                                .padding(9)
                            Text(model.title)
                                .foregroundColor(.black)
                                .font(.system(size: 23))
                                .bold()
                        }
                    }
                    .onMove(perform: move)
                }
                .frame(height: 640)
                .listStyle(PlainListStyle())
            }
            .environment(\.editMode, $isEditMode)
            
            HStack {
                TabBar()
            }
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
