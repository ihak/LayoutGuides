//
//  ViewController.swift
//  LayoutGuides
//
//  Created by Hassan Ahmed on 04/10/2017.
//  Copyright © 2017 Hassan Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    override func viewDidLayoutSubviews() {
//        print(self.view.layoutMarginsGuide.layoutFrame)
//        let view = UIView(frame: self.view.layoutMarginsGuide.layoutFrame)
//        view.backgroundColor = .red
//        self.view.addSubview(view)
//    }
    
    func animationWithLayoutGuides() {
        //
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
        
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = UIColor.brown
        self.view.addSubview(view2)
        
        let leftGuide = UILayoutGuide()
        self.view.addLayoutGuide(leftGuide)
        
        let centerGuide = UILayoutGuide()
        self.view.addLayoutGuide(centerGuide)
        
        let rightGuide = UILayoutGuide()
        self.view.addLayoutGuide(rightGuide)
        
        leftGuide.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        leftGuide.trailingAnchor.constraint(equalTo: view1.leadingAnchor).isActive = true
        
        centerGuide.leadingAnchor.constraint(equalTo: view1.trailingAnchor).isActive = true
        centerGuide.trailingAnchor.constraint(equalTo: view2.leadingAnchor).isActive = true
        centerGuide.widthAnchor.constraint(equalTo: leftGuide.widthAnchor)
        
        rightGuide.leadingAnchor.constraint(equalTo: view2.trailingAnchor).isActive = true
        rightGuide.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        rightGuide.widthAnchor.constraint(equalTo: leftGuide.widthAnchor)
        
//        self.view.layout
    }

}

