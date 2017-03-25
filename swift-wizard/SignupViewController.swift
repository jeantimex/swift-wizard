//
//  SignupViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/24/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit

class SignupViewController: WizardViewController {
    
    override func doSubmit() {
        // Submit to the server
        let signupDataModel: SignupDataModel = self.dataModel as! SignupDataModel
        print(signupDataModel.username ?? "")
        print(signupDataModel.password ?? "")
        print(signupDataModel.company ?? "")
        
        self.finish()
    }
    
}
