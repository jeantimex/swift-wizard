//
//  CompanyViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/24/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit
import SnapKit

class CompanyViewController: SignupScreenViewController {
    
    lazy var submitButton: UIButton = {
        var btn = UIButton(type: UIButtonType.system)
        btn.setTitle("Submit", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.layer.borderColor = UIColor.gray.cgColor
        btn.layer.borderWidth = 1.0
        btn.layer.cornerRadius = 5.0
        btn.addTarget(self, action: #selector(onSubmit), for: .touchUpInside)
        return btn
    }()
    
    lazy var usernameField: UILabel = {
        var lbl = UILabel()
        lbl.text = "Company"
        return lbl
    }()
    
    override func isLastScreen() -> Bool {
        return true
    }
    
    override func getTitle() -> String {
        return "Company"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(submitButton)
        submitButton.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(44)
            make.center.equalTo(self.view)
        }
    }
    
    override func save() {
        self.dataModel.company = "box"
    }
    
    func onSubmit() {
        self.wizardViewController.submit()
    }
    
}
