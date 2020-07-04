//
//  FirstViewController.swift
//  ViewControllersHiearachy
//
//  Created by Vladimir Banushkin on 02.07.2020.
//  Copyright © 2020 Vladimir Banushkin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  lazy var textField: UITextField = {
    let textField = UITextField()
    textField.backgroundColor = .white
    textField.layer.cornerRadius = 5
    return textField
  }()
  
  lazy var button: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("toViewController3", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.sizeToFit()
    button.addTarget(self, action: #selector(toVC3Tapped(_:)), for: .touchUpInside)
    return button
  }()
  
  
  
  //MARK: - LIfecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .systemTeal
    guard let tabBarController = tabBarController else {
      return
    }
    textField.frame.size.width = view.frame.width/3
    textField.center = CGPoint(x: view.frame.width/2,
                               y: view.frame.height/2 - tabBarController.tabBar.frame.size.height)
    textField.frame.size.height = 20
    
    button.center.x = textField.center.x
    button.center.y = textField.frame.maxY + 15
    view.addSubview(button)
    view.addSubview(textField)
  }
  
  @objc func toVC3Tapped(_ sender: UIButton) {
    
    let thirdVC = ThirdViewController()
    
    thirdVC.text = textField.text ?? "Error"
    
    navigationController?.pushViewController(thirdVC, animated: true)
  }
  
}


