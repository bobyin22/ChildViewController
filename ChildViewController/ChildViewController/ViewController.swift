//
//  ViewController.swift
//  ChildViewController
//
//  Created by 邱慧珊 on 2024/7/24.
//

import UIKit

class ViewController: UIViewController {

    // Programmtic 建立子VC實體
    let childVC2 = SecondChildVC()
    
    enum Segues {
        static let toFirstChild = "ToFirstChild"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSecondChildVC()
    }
    
    // Programmtic 把子VC放入主VC
    func addSecondChildVC() {
        addChild(childVC2)
        childVC2.view.backgroundColor = .yellow
        view.addSubview(childVC2.view)
        childVC2.didMove(toParent: self)
        setChildVC2Constrain()
    }
    
    // Programmtic 設定子VC Constrain
    func setChildVC2Constrain() {
        childVC2.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            childVC2.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            childVC2.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            childVC2.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            childVC2.view.heightAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.toFirstChild {
            let destVC = segue.destination as! FirstChildVC
            destVC.view.backgroundColor = .blue
        }
    }
}

