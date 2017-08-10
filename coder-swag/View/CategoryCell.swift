//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Lancelot Edwards on 09/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
  @IBOutlet weak var categoryImageView: UIImageView!
  @IBOutlet weak var categoryTitleLabel: UILabel!
  
  func configureCell( _ category: Category) {
    categoryImageView.image = UIImage(named: category.imageName)
    categoryTitleLabel.text = category.title
  }
}
