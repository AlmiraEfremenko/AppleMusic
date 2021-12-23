//
//  SearchViewCell.swift
//  AppleMusic
//
//  Created by MAC on 16.12.2021.
//

import UIKit

class  SearchViewCell: UICollectionViewCell {
    
    static let identifier = "SearchViewAppleMusic"
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = MetricSearchViewCell.cornerRadiusImage
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupLayout() {
        
        image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: MetricSearchViewCell.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: MetricSearchViewCell.trailingAnchor).isActive = true
        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    private func setupHierarchy() {
        contentView.addSubview(image)
    }
}

struct MetricSearchViewCell {
    
    static let cornerRadiusImage: CGFloat = 3
    static let leadingAnchor: CGFloat = 3
    static let trailingAnchor: CGFloat = -3
}
