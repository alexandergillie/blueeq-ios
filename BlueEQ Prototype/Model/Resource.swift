//
//  Resource.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/8/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import Foundation

class Resource {
    let resourceDate: Date;
    let content: String;
    var viewStatus: Bool;
    let dimension: String;
    
    init(resourceDate: Date, content: String, dimension: String){
        
        print("Initializing resource")
        viewStatus = false;
        self.content = content
        self.resourceDate = resourceDate
        self.dimension = dimension
    }
    
}
