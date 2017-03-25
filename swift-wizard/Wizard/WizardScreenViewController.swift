//
//  WizardScreenViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/23/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit

class WizardScreenViewController: UIViewController {
    
    lazy var wizardViewController: WizardViewController = {
        return self.navigationController as! WizardViewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.wizardViewController.currentWizardScreenViewController = self
    }
    
    func isFirstScreen() -> Bool {
        return false
    }
    
    func isLastScreen() -> Bool {
        return false
    }
    
    func getTitle() -> String {
        return ""
    }
    
    func save() {
        
    }
    
    func getNextScreen() -> WizardScreenViewController? {
        return nil
    }
    
}
