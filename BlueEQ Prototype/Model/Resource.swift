//
//  Resource.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/8/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import Foundation

class Resource {
    private let resourceDate: Date;
    private let content: String;
    private var viewStatus: Bool;
    
    init(){
        
        print("Initializing resource")
        viewStatus = false;
        content = "Early to bed and early to rise makes a man healthy, wealthy, and woke."
        resourceDate = Date()
    }
}
