//
//  SearchViewRepresentable.swift
//  AppleMusic
//
//  Created by MAC on 16.12.2021.
//

import SwiftUI
import UIKit

struct SearchViewRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SearchViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
