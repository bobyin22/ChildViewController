//
//  SecondChildVC.swift
//  ChildViewController
//
//  Created by 邱慧珊 on 2024/7/24.
//

import UIKit

class SecondChildVC: UIViewController {

    let secondLable: UILabel = {
       let label = UILabel()
        label.text = "SecondChildVC"
        label.textAlignment = .center
        let fullScreenSize = UIScreen.main.bounds.size
        label.frame = CGRect(x: (fullScreenSize.width * 0.5) - 100,
                             y: fullScreenSize.height * 0.1,
                             width: 200,
                             height: 50)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(secondLable)
    }
}
