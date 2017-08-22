//
//  Service.swift
//  coder-swag
//
//  Created by Daniyal Mokhammad on 2017-08-17.
//  Copyright © 2017 Daniyal Mokhammad. All rights reserved.
//

import Foundation
class DataService{
    static let instance = DataService()
    
    private let categories = [
        
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
        
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Something 1", price: "$12", imageName: "hat03.png"),
        Product(title:"Somethings 2", price: "$13", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Hoodie 1", price: "$18", imageName: "hoodie01.png"),
        Product(title: "Hoodie 2", price: "$22", imageName: "hoodie02.png"),
        Product(title: "Hoodie 3", price: "$12", imageName: "hoodie03.png"),
        Product(title: "Hoodie 4", price: "$13", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Shirt 1", price: "$18", imageName: "shirt01.png"),
        Product(title: "Shirt 2", price: "$22", imageName: "shirt02.png"),
        Product(title: "Shirt 3", price: "$12", imageName: "shirt03.png"),
        Product(title: "Shirt 4", price: "$13", imageName: "shirt04.png")
    ]
    
    private let digital = [Product]()
    
    
    private let digitalGoods = [Product]()
    
    func getCategories()-> [Category]{
        
        return categories
        
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
           return getHats()
        case "HOODIES":
           return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    func getShirts() -> [Product]{
        return shirts
    }
    
}
