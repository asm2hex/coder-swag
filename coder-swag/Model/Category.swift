//
//  Category.swift
//  coder-swag
//
//  Created by Lancelot Edwards on 10/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import Foundation

struct Category {
  private(set) public var title: String
  private(set) public var imageName: String
  
  init(title: String, imageName: String) {
    self.title = title
    self.imageName = imageName
  }
}
