//
//  ViewController.swift
//  SMSLocalization
//
//  Created by Macuser on 5/19/16.
//  Copyright © 2016 Macuser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTxtField: UITextField!
    
    @IBOutlet weak var passwordTxtField: UITextField!
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var pwdLbl: UILabel!
    
    @IBOutlet weak var loginBtn: UIButton!
    
    
    var bundle: Bundle = Bundle(){
        didSet{
            
            localizeString()
        }
    }

    func localizeString(){
        
        userNameTxtField.placeholder =  NSLocalizedString("KUserName", bundle: bundle, comment: "hello")
        passwordTxtField.placeholder = NSLocalizedString("KPassword", bundle: bundle, comment: "hello")
        nameLbl.text =  NSLocalizedString("KName", bundle: bundle, comment: "hello")
        pwdLbl.text =  NSLocalizedString("KPwd", bundle: bundle, comment: "hello")
        loginBtn.setTitle(NSLocalizedString("KLogin", bundle: bundle, comment: "hello"), for: UIControlState())
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
    }
    
    
    @IBAction func showAlertInEnglishActn(_ sender: AnyObject) {
        
        LanguageManager.sharedInstance.setLocale("en")
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
        
    }
   
    
    
    @IBAction func showAlertInFinishActn(_ sender: AnyObject) {
        
        LanguageManager.sharedInstance.setLocale("fi")
        bundle = LanguageManager.sharedInstance.getCurrentBundle()
        
    }
}

