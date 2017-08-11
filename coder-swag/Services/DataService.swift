//
//  DataService.swift
//  coder-swag
//
//  Created by Lancelot Edwards on 10/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import Foundation

class DataService {
  static let instance = DataService()
  
  private let categories = [
    Category(title: "SHIRTS", imageName: "shirts"),
    Category(title: "HOODIES", imageName: "hoodies"),
    Category(title: "HATS", imageName: "hats"),
    Category(title: "DIGITAL", imageName: "digital")
  ]
  
  private let hats = [
    Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01"),
    Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02"),
    Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03"),
    Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04")
  ]
  
  private let hoodies = [
    Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01"),
    Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02"),
    Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03"),
    Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04")
  ]
  
  private let shirts = [
    Product(title: "Devslopes Logo Shirt Black" , price: "$18", imageName: "shirt01"),
    Product(title: "Devslopes Badge Shirt Light Grey" , price: "$18", imageName: "shirt02"),
    Product(title: "Devslopes Logo Shirt Red" , price: "$18", imageName: "shirt03"),
    Product(title: "Hustle Delegate Grey" , price: "$19", imageName: "shirt04"),
    Product(title: "Kickflip Studio Black" , price: "$19", imageName: "shirt05"),
  ]
  
  private let digitalGoods: [Product] = []
  
  func getCategories() -> [Category] {
    return categories
  }
  
  func getProducts(forCategoryTitle title: String) -> [Product] {
    switch title {
    case "SHIRTS":
      return getShirts()
    case "HOODIES":
      return getHoodies()
    case "HATS":
      return getHats()
    case "DIGITAL":
      return getDigitalGoods()
    default:
      return getHats()
    }
  }
  
  func getHats() -> [Product] {
    return hats
  }
  
  func getHoodies() -> [Product] {
    return hoodies
  }
  
  func getShirts() -> [Product] {
    return shirts
  }
  
  func getDigitalGoods() -> [Product] {
    return digitalGoods
  }


}
