//
//  ProductCell.swift
//  coder-swag
//
//  Created by Lancelot Edwards on 10/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
  @IBOutlet weak var productImageView: UIImageView!
  @IBOutlet weak var productTitleLabel: UILabel!
  @IBOutlet weak var productPriceLabel: UILabel!
  
  func configureCell(withProduct product: Product) {
    productImageView.image = UIImage(named: product.imageName)
    productTitleLabel.text = product.title
    productPriceLabel.text = product.price
  }
}
