//
//  IDataSource.swift
//  SplitDataSource
//
//  Created by kokozzz on 27/1/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import UIKit


protocol IDataSource {
    
    associatedtype ViewController
    
    var vc:ViewController? { get set }
    
}

extension IDataSource where Self: NSObject {
    
    init(vc: ViewController?) {
        self.init()
        self.vc = vc
    }
    
}
