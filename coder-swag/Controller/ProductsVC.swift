//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Lancelot Edwards on 11/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
  @IBOutlet weak var productsCollectionView: UICollectionView!

  private(set) public var products: [Product] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
  func initializeProducts(forCategory category: Category) {
    products = DataService.instance.getProducts(forCategoryTitle: category.title)
    title = category.title
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return products.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell else { return UICollectionViewCell() }
    let product = products[indexPath.item]
    cell.configureCell(withProduct: product)
    return cell
  }

}
