//
//  ProductVC.swift
//  coder-swag
//
//  Created by Daniyal Mokhammad on 2017-08-21.
//  Copyright © 2017 Daniyal Mokhammad. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
  
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var product = [Product]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func initProducts(category: Category){
        product = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = self.product[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }
    
    
}
