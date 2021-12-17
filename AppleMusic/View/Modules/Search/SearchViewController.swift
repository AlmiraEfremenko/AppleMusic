//
//  SearchViewController.swift
//  AppleMusic
//
//  Created by MAC on 16.12.2021.
//

import UIKit

class SearchViewController: UIViewController {
    
    var data = ModelSearchData.data
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.register(SearchViewCell.self, forCellWithReuseIdentifier: SearchViewCell.identifier)
        collectionView.register(HeaderSearchView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSearchView.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = createCompositionalLayout()
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
    }
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        
        let layout = UICollectionViewCompositionalLayout{(sectionIndex: Int, layoutEnviroment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            self.createCompositionalLayoutSearchView()
        }
        return layout
    }
    
    private func createCompositionalLayoutSearchView() -> NSCollectionLayoutSection {
        
        let headerSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricSearchViewController.fractionalWidth),
            heightDimension: .absolute(MetricSearchViewController.heightDimension))
        let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
            layoutSize: headerSize,
            elementKind: HeaderSearchView.identifier,
            alignment: .top)
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricSearchViewController.fractionalWidth),
            heightDimension: .fractionalHeight(MetricSearchViewController.fractionalHeight))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(
            top: MetricSearchViewController.itemTop,
            leading: MetricSearchViewController.itemLeading,
            bottom: MetricSearchViewController.itemBottom,
            trailing: MetricSearchViewController.itemTrailing)
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(MetricSearchViewController.fractionalWidth),
            heightDimension: .fractionalHeight(MetricSearchViewController.fractionalHeightGroup))
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitem: item,
            count: Int(MetricSearchViewController.itemInGroup))
        let section = NSCollectionLayoutSection(group: group)
        section.boundarySupplementaryItems = [sectionHeader]
        return section
    }
}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchViewCell.identifier, for: indexPath) as? SearchViewCell {
            cell.image.image = data[indexPath.row].image
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: MetricSearchViewController.heightSection)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let headerSectionSearch = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderSearchView.identifier, for: indexPath) as? HeaderSearchView else { return UICollectionReusableView() }
        return headerSectionSearch
    }
}

struct MetricSearchViewController {
    
    static let fractionalWidth: CGFloat = 1.0
    static let fractionalHeight: CGFloat = 1.0
    static let heightDimension: CGFloat = 30
    static let fractionalHeightGroup: CGFloat = 0.25
    static let itemTop: CGFloat = 10
    static let itemLeading: CGFloat = 13
    static let itemBottom: CGFloat = 15
    static let itemTrailing: CGFloat = 13
    static let itemInGroup: CGFloat = 2
    static let heightSection: CGFloat = 40
}
