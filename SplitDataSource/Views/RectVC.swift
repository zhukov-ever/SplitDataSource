//
//  RectCell.swift
//  SplitDataSource
//
//  Created by kokozzz on 27/1/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import UIKit


class RectVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var dataSource:RectDataSource = RectDataSource(vc: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        setData()
    }
    
    func setupCollectionView() {
        dataSource.registerCells(in: collectionView)
    }
    
    func setData() {
        dataSource.items = ["test", "for", "sqr"]
        collectionView.delegate = dataSource
        collectionView.dataSource = dataSource
        collectionView.reloadData()
    }
    
}
