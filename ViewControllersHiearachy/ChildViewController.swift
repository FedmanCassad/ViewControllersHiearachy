//
//  ChildViewController.swift
//  ViewControllersHiearachy
//
//  Created by Vladimir Banushkin on 04.07.2020.
//  Copyright © 2020 Vladimir Banushkin. All rights reserved.
//

import UIKit
class ChildViewController: UIViewController {
  
  lazy var backButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Back", for: .normal)
    button.sizeToFit()
    button.addTarget(self, action: #selector(backButtonTapped(_:)), for: .touchUpInside)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .gray
    view.addSubview(backButton)
  }
  
  override func viewDidLayoutSubviews() {
    backButton.center = view.center
  }
  
  @objc func backButtonTapped(_ sender: UIButton) {
    self.willMove(toParent: nil)
    self.removeFromParent()
    self.view.removeFromSuperview()
  }
  
}
