//
//  TipListView.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/19/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import UIKit

class TipListView : UIView {
    
    // MARK: Properties
    
    var tipList = [String]()
    
    
    // MARK: Draw
    
    override func draw(_ rect: CGRect) {
        drawList()
    }
}
