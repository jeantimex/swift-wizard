//
//  UsernameViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/23/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit
import SnapKit

class UsernameViewController: SignupScreenViewController {

    lazy var usernameField: UILabel = {
        var lbl = UILabel()
        lbl.text = "Username"
        return lbl
    }()
    
    override func isFirstScreen() -> Bool {
        return true
    }
    
    override func getTitle() -> String {
        return "Username"
    }
    
    override func save() {
        self.dataModel.username = "jeantimex"
    }
    
    override func getNextScreen() -> WizardScreenViewController? {
        return PasswordViewController()
    }
    
}
