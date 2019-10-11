//
//  ViewController.swift
//  ExampleApp
//
//  Created by Wendy Liga on 10/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import DeclarativeKit
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button = UIButton()
            .touchUpInside { _ in
                print(">>> action executed")
            }
            .touchUpOutside { _ in
                print(">>> touchUpOutside")
            }.touchDown{ _ in
                print(">>> touch down")
            }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+1) {
            print(">>> action sended")
            button.sendActions(for: .touchUpInside)
        }
        
//        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
//            button.sendActions(for: .touchUpOutside)
//        }
    }
}

