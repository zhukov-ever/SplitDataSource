//
//  HomeDataSource.swift
//  SplitDataSource
//
//  Created by kokozzz on 27/1/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import UIKit


extension HomeDataSource: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        guard let _section = sections[indexPath.section] else { fatalError() }
        
        switch _section {
        case .sqr:
            return sqrDS.collectionView(collectionView, layout:collectionViewLayout, sizeForItemAt:indexPath)
        case .rect:
            return rectDS.collectionView(collectionView, layout:collectionViewLayout, sizeForItemAt:indexPath)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        guard let _section = sections[section] else { fatalError() }
        
        switch _section {
        case .sqr:
            return sqrDS.collectionView(collectionView, layout:collectionViewLayout, minimumLineSpacingForSectionAt:section)
        case .rect:
            return rectDS.collectionView(collectionView, layout:collectionViewLayout, minimumLineSpacingForSectionAt:section)
        }
    }
    
}


extension HomeDataSource: UICollectionViewDelegate {
    
}


extension HomeDataSource: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        guard let _section = sections[section] else { fatalError() }
        
        switch _section {
        case .sqr:
            return sqrDS.collectionView(collectionView, numberOfItemsInSection:section)
        case .rect:
            return rectDS.collectionView(collectionView, numberOfItemsInSection:section)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let _section = sections[indexPath.section] else { fatalError() }
        
        switch _section {
        case .sqr:
            return sqrDS.collectionView(collectionView, cellForItemAt:indexPath)
        case .rect:
            return rectDS.collectionView(collectionView, cellForItemAt:indexPath)
            
        }
    }
    
}


enum HomeSections {
    case sqr
    case rect
}


class HomeDataSource: NSObject, IDataSource {
    
    typealias ViewController = UIViewController
    
    weak var vc: UIViewController?
    
    lazy var sqrDS:SqrDataSource = SqrDataSource(vc: vc)
    lazy var rectDS:RectDataSource = RectDataSource(vc: vc)
    var sections = [
        0:HomeSections.sqr,
        1:HomeSections.rect
    ]
    
    func registerCells(in collectionView:UICollectionView) {
        sqrDS.registerCells(in: collectionView)
        rectDS.registerCells(in: collectionView)
    }
    
}
