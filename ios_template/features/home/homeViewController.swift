//
//  homeViewController.swift
//  ios_template
//
//  Created by Nujud Alalawi on 10/10/1444 AH.
//

import UIKit

class homeViewController: UIViewController {
    
    
    var language = Language ()
 
    
    @IBOutlet weak var lbHello: UILabel!
    
    @IBOutlet weak var changeLanguageButtonOutlet: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
           setupLanguage ()
       
    }
  
    
    
    
     @IBAction func changeLanguageButton(_ sender: Any) {
         language.changeLanguage()
     }
     
 
//    --------change 
    func setupLanguage (){
        lbHello.text = NSLocalizedString("hello", comment: " hello label")
        changeLanguageButtonOutlet.setTitle(NSLocalizedString("changeLang", comment: ""), for: .normal)
    }
    

}
