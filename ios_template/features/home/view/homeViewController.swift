//
//  homeViewController.swift
//  ios_template
//
//  Created by Nujud Alalawi on 10/10/1444 AH.
//

import UIKit

class homeViewController: UIViewController {
//    -------------------------varibale & object ---------------------------------------
    
    var language = Language ()
    var languageKeys = LanguageKeys()
 var userDefault =  UserDefaults.standard
    

//    ------------------------outlet -------------------------
    @IBOutlet weak var changeLanguageButtonOutlet: UIButton!
    
    @IBOutlet weak var modeSwitchOutlet: UISwitch!
    
    @IBOutlet weak var languageLabel: UILabel!
    
    @IBOutlet weak var authanticationButtonOutlet: UIButton!
    
    
    @IBOutlet weak var profileButtonOutlet: UIButton!
    
    @IBOutlet weak var crudButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
           setupLanguage ()
        
    }
  
    
    
//    ------------------------------ mode theme -------------------------------------------------
    
    @IBAction func changeTheme(_ sender: Any) {
    
        
        if modeSwitchOutlet.isOn == true {
            let window = UIApplication.shared.windows[0]
            window.overrideUserInterfaceStyle = .light
           userDefault.set(true, forKey: "lightTheme")

        }else{
            let window = UIApplication.shared.windows[0]
            window.overrideUserInterfaceStyle = .dark

            userDefault.set(true, forKey: "darkTheme")
        }
        
    }
    
    func checkSwitchState(){
        
        if(userDefault.bool(forKey:"lightTheme" )){
            
            modeSwitchOutlet.setOn(true, animated: false)
        }
           
           else {
            
            modeSwitchOutlet.setOn(true, animated: false)
        }
    }
    
//    --------------------------------------------------- localizition ----------------------------------------------------------------
    
     @IBAction func changeLanguageButton(_ sender: Any) {
         language.changeLanguage()
     }
     
 
//    --------change text
    func setupLanguage (){
        languageLabel.text = NSLocalizedString(languageKeys.languageKey, comment: "")
        
       changeLanguageButtonOutlet.setTitle(NSLocalizedString(languageKeys.changeLangKey, comment: ""), for: .normal)
        
        authanticationButtonOutlet.setTitle(NSLocalizedString(languageKeys.authKey, comment: ""), for: .normal)
        profileButtonOutlet.setTitle(NSLocalizedString(languageKeys.profileKey, comment: ""), for: .normal)
        
        crudButtonOutlet.setTitle(NSLocalizedString(languageKeys.crudKey, comment: ""), for: .normal)
        
    }
    

}
