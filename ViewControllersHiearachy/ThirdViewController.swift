//
//  ThirdViewController.swift
//  ViewControllersHiearachy
//
//  Created by Vladimir Banushkin on 02.07.2020.
//  Copyright © 2020 Vladimir Banushkin. All rights reserved.
//

import UIKit
class ThirdViewController: UIViewController {
  var text: String = ""
  
  lazy var label: UILabel = {
    let label = UILabel()
    label.frame.size.height = 20
    return label
  }()
  
  lazy var button: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Unwind", for: .normal)
    button.addTarget(self, action: #selector(unwindTapped(_:)), for: .touchUpInside)
    button.sizeToFit()
    return button
  }()
  
  //MARK: - Lyfecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .orange
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    view.addSubview(label)
    view.addSubview(button)
    label.text = text
    label.sizeToFit()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    label.center.x = view.frame.width/2
    label.center.y = view.frame.height/2 - tabBarController!.tabBar.frame.height
    button.center.x = label.center.x
    button.frame.origin.y = label.frame.maxY + 10
  }
  
  @objc func unwindTapped(_ sender: UIButton) {
    guard let tabC = tabBarController else {return}
    tabC.selectedViewController =  tabC.viewControllers![1]
  }
  
}
