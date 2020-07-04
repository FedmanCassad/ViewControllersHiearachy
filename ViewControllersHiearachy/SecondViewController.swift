//
//  ViewController.swift
//  ViewControllersHiearachy
//
//  Created by Vladimir Banushkin on 02.07.2020.
//  Copyright © 2020 Vladimir Banushkin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  lazy var toVC4button: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("toViewController4", for: .normal)
    button.sizeToFit()
    button.addTarget(self, action: #selector(toVC4Tapped(_:)), for: .touchUpInside)
    return button
  }()
  
  lazy var addChildVCButton: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("addChildViewController", for: .normal)
    button.sizeToFit()
    button.addTarget(self, action: #selector(addChildTapped(_:)), for: .touchUpInside)
    return button
  }()
  
  //MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(toVC4button)
    view.addSubview(addChildVCButton)
    view.backgroundColor = .green
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    toVC4button.center.x = view.frame.width/2
    toVC4button.center.y = view.frame.height/2 - tabBarController!.tabBar.frame.height
    addChildVCButton.center.x = toVC4button.center.x
    addChildVCButton.frame.origin.y = toVC4button.frame.maxY + 20
  }
  
  @objc func toVC4Tapped(_ sender: UIButton) {
 present(PresentViewController(nibName: "PresentViewController", bundle: nil), animated: true)
  }
  
  @objc func addChildTapped(_ sender: UIButton) {
   let child = ChildViewController()
    view.addSubview(child.view)
    addChild(child)
    child.didMove(toParent: self)
  }
  
}

