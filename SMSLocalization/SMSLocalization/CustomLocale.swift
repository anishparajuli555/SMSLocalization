//
//  File.swift
//  Restarant
//
//  Created by SMS-DEV-ANISH on 11/21/16.
//  Copyright © 2016 Macuser. All rights reserved.
//

import Foundation

class CustomLocale: NSObject {
    var name:String?
    var languageCode:String?
    var countryCode:String?
    
    init(languageCode: String,countryCode:String,name: String) {
        
        self.name = name
        self.languageCode = languageCode
        self.countryCode = countryCode
        
    }

}
