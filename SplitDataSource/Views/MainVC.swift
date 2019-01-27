//
//  ViewController.swift
//  SplitDataSource
//
//  Created by kokozzz on 27/1/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import UIKit


class MainVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    lazy var dataSource:HomeDataSource = HomeDataSource(vc: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCollectionView()
        setData()
    }

    func setupCollectionView() {
        dataSource.registerCells(in: collectionView)
    }

    func setData() {
        dataSource.sqrDS.items = ["test", "for", "sqr"]
        dataSource.rectDS.items = ["zhopa", "tuda", "seda"]
        collectionView.delegate = dataSource
        collectionView.dataSource = dataSource
        collectionView.reloadData()
    }
    
}

