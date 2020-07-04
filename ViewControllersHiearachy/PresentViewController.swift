//
//  PresentViewController.swift
//  ViewControllersHiearachy
//
//  Created by Vladimir Banushkin on 04.07.2020.
//  Copyright © 2020 Vladimir Banushkin. All rights reserved.
//

import UIKit

class PresentViewController: UIViewController {
  
  @IBAction func tapped(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
