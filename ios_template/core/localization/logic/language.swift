//
//  File.swift
//  ios_template
//
//  Created by Nujud Alalawi on 10/10/1444 AH.
//

import UIKit
class Language {
    
//    save current language
    func changeLanguage (){
        
        let currentLang =  Locale.current.languageCode
        let newLang = currentLang == "en" ? "ar" : "en"
        UserDefaults.standard.setValue([newLang], forKey: "AppleLanguages")
        
        exit(0)
    }
}
