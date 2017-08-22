//
//  Category.swift
//  coder-swag
//
//  Created by Daniyal Mokhammad on 2017-08-17.
//  Copyright © 2017 Daniyal Mokhammad. All rights reserved.
//

import Foundation
struct Category{
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
}
