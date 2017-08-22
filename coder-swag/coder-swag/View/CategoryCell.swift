//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Daniyal Mokhammad on 2017-08-17.
//  Copyright © 2017 Daniyal Mokhammad. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
   
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    

}
