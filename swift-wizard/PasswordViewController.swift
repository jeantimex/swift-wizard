//
//  PasswordViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/24/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit
import SnapKit

class PasswordViewController: SignupScreenViewController {
    
    lazy var usernameField: UILabel = {
        var lbl = UILabel()
        lbl.text = "Password"
        return lbl
    }()
    
    override func getTitle() -> String {
        return "Password"
    }
    
    override func getNextScreen() -> WizardScreenViewController? {
        return CompanyViewController()
    }
    
    override func save() {
        self.dataModel.password = "1234"
    }
    
}
