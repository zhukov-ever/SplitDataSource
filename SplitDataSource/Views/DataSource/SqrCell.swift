//
//  SqrCell.swift
//  SplitDataSource
//
//  Created by kokozzz on 27/1/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import UIKit

class SqrCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .gray
    }

}
