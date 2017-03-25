//
//  WizardViewController.swift
//  swift-wizard
//
//  Created by Yong Su on 3/23/17.
//  Copyright © 2017 jeantimex. All rights reserved.
//

import UIKit

class WizardViewController: UINavigationController {
    
    lazy var navCancelButton: UIBarButtonItem = {
        return UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(onCancel))
    }()
    
    lazy var navBackButton: UIBarButtonItem = {
        return UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(onBack))
    }()
    
    lazy var navNextButton: UIBarButtonItem = {
        return UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(onNext))
    }()
    
    public private(set) var dataModel: WizardDataModel?
    
    init(rootWizardScreenViewController: WizardScreenViewController, dataModel: WizardDataModel) {
        super.init(rootViewController: rootWizardScreenViewController)
        self.dataModel = dataModel
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private var _currentWizardScreenViewController: WizardScreenViewController!
    public var currentWizardScreenViewController: WizardScreenViewController! {
        get {
            return _currentWizardScreenViewController
        }
        set {
            _currentWizardScreenViewController = newValue
            updateNavigation(wizardScreenViewController: newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
    }
    
    func submit() {
        self.currentWizardScreenViewController.save()
        self.doSubmit()
    }
    
    func doSubmit() {
        
    }
    
    func finish() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc
    fileprivate func onCancel() {
        self.finish()
    }
    
    @objc
    fileprivate func onBack() {
        popViewController(animated: true)
        self.navBackButton.isEnabled = false
    }
    
    @objc
    fileprivate func onNext() {
        self.currentWizardScreenViewController.save()
        
        if let nextScreen: WizardScreenViewController = self.currentWizardScreenViewController.getNextScreen() {
            pushViewController(nextScreen, animated: true)
            self.navNextButton.isEnabled = false
        }
    }
    
    private func updateNavigation(wizardScreenViewController: WizardScreenViewController) {
        wizardScreenViewController.title = wizardScreenViewController.getTitle()
        
        if wizardScreenViewController.isFirstScreen() {
            wizardScreenViewController.navigationItem.leftBarButtonItem = self.navCancelButton
            self.navCancelButton.isEnabled = true
        } else {
            wizardScreenViewController.navigationItem.leftBarButtonItem = self.navBackButton
            self.navBackButton.isEnabled = true
        }
        
        if wizardScreenViewController.isLastScreen() {
            wizardScreenViewController.navigationItem.rightBarButtonItem = nil
        } else {
            wizardScreenViewController.navigationItem.rightBarButtonItem = self.navNextButton
            self.navNextButton.isEnabled = true
        }
    }
}
