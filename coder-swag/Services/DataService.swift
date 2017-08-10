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
  
  func getCategories() -> [Category] {
    return categories
  }
}
