//
//  SqrDataSource.swift
//  SplitDataSource
//
//  Created by kokozzz on 27/1/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import UIKit


extension SqrDataSource: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}


extension SqrDataSource: UICollectionViewDelegate {
    
}


extension SqrDataSource: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SqrCell.self), for: indexPath)
        return cell
    }
    
}


class SqrDataSource: NSObject, IDataSource {
    
    typealias ViewController = UIViewController
    typealias ItemType = String
    
    weak var vc: UIViewController?
    
    var items:[ItemType] = []
    
    func registerCells(in collectionView:UICollectionView) {
        let identifier = String(describing: SqrCell.self)
        collectionView.register(UINib(nibName: identifier, bundle: nil), forCellWithReuseIdentifier: identifier)
    }
    
}
