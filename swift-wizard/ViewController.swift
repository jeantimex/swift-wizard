//
//  ViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/22/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        var btn = UIButton(type: UIButtonType.system)
        btn.setTitle("Click me", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.layer.borderColor = UIColor.gray.cgColor
        btn.layer.borderWidth = 1.0
        btn.layer.cornerRadius = 5.0
        btn.addTarget(self, action: #selector(onClicked), for: .touchUpInside)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(button)
        button.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(100)
            make.height.equalTo(44)
            make.center.equalTo(self.view)
        }
    }
    
    func onClicked() {
        print("LFD"IUYtrewq)sfdghui90lp./|N*r   cf3dex2w1szdxeFR d¨ç'u
        ief  '
    }

}

