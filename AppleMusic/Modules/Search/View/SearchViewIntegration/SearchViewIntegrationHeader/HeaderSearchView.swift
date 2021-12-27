//
//  HeaderSearchView.swift
//  AppleMusic
//
//  Created by MAC on 16.12.2021.
//

import UIKit

class HeaderSearchView: UICollectionReusableView {
    
    static let identifier = "HeaderSearchView"
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Поиск по категориям"
        label.font = .boldSystemFont(ofSize: MetricHeaderSearchView.fontLabel)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupHierarchy() {
        addSubview(label)
    }
    
    private func setupLayout() {
        label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: MetricHeaderSearchView.leadingAnchor).isActive = true
    }
}

struct MetricHeaderSearchView {
    
    static let fontLabel: CGFloat = 22
    static let leadingAnchor: CGFloat = 15
}
