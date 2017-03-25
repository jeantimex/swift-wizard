//
//  SignupScreenViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/24/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit

class SignupScreenViewController: WizardScreenViewController {
    
    public var dataModel: SignupDataModel {
        get {
            return self.wizardViewController.dataModel as! SignupDataModel
        }
    }
    
}
