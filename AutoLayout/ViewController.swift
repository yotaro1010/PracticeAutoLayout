//
//  ViewController.swift
//  AutoLayout
//
//  Created by Yotaro Ito on 2020/12/14.
//

import UIKit

class ViewController: UIViewController {
    private let myView:UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .red
        return myView
    }()
    
    private let secondView:UIView = {
        let secondView = UIView()
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.backgroundColor = .blue
        return secondView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(view.frame)
        view.addSubview(myView)
        myView.addSubview(secondView)
     
        setUpLayout()
      
        }
    
    
    func setUpLayout(){

        myView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        myView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        myView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        myView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        secondView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5).isActive = true
        secondView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5).isActive = true
        secondView.centerXAnchor.constraint(equalTo: myView.centerXAnchor).isActive = true
        secondView.centerYAnchor.constraint(equalTo: myView.centerYAnchor).isActive = true

    }

}

