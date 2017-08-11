//
//  CategoriesVC.swift
//  coder-swag
//
//  Created by Lancelot Edwards on 09/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

  @IBOutlet weak var categoryTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return DataService.instance.getCategories().count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell else { return UITableViewCell() }
    let category = DataService.instance.getCategories()[indexPath.row]
    cell.configureCell(category)
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let category = DataService.instance.getCategories()[indexPath.row]
    performSegue(withIdentifier: "ProductsVC", sender: category)
  }
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let productsVC = segue.destination as? ProductsVC {
      assert(sender as? Category != nil)
      productsVC.initializeProducts(forCategory: sender as! Category)
      
      let barButton = UIBarButtonItem()
      barButton.title = ""
      navigationItem.backBarButtonItem = barButton
    }
  }


}

