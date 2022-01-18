//
//  SettingsViewController.swift
//  Prework
//
//  Created by Xavier Hall on 1/9/22.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var Tip1fieldtext: UITextField!
    @IBOutlet weak var Tip2fieldtext: UITextField!
    @IBOutlet weak var Tip3fieldtext: UITextField!
    @IBOutlet weak var Darkmode: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Tip Calculator"

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
        
        self.Darkmode.setOn(UserDefaults.standard.bool(forKey: "toggleState"), animated: true)
    }
    
    @IBAction func Darkmode(_ sender: UISwitch) {
        if #available(iOS 13.0, *) {
            let appDelegate = UIApplication.shared.windows.first
            
            if sender.isOn {
                appDelegate?.overrideUserInterfaceStyle = .dark
                return
            }else{
                appDelegate?.overrideUserInterfaceStyle = .light
                return
            }
           
        }
        
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
