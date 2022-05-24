//
//  ViewController.swift
//  CustomButton
//
//  Created by Vijayakumar on 05/24/2022.
//  Copyright (c) 2022 Vijayakumar. All rights reserved.
//
import Foundation
import UIKit
import CustomButton


@available(iOS 14.0, *)
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let iconTextButton = CustomButton(frame: CGRect(x: (view.frame.size.width-300)/2, y: 100, width:300, height: 55), primaryAction: UIAction(title: "Refresh") { (action) in
            print("Refresh the data.")
        })
        iconTextButton.configure(with: IconTextButtonViewModel(text:"Subscribe",icon:UIImage(systemName: "cart"),backgroundColor:.systemGreen))
//        let iconTextButton = IconTextButton()
        view.addSubview(iconTextButton)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func onClick() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

}

