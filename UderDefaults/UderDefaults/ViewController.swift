//
//  ViewController.swift
//  UderDefaults
//
//  Created by ShivaT on 18/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Usernametxt: UITextField!
    @IBOutlet weak var Passwordtxt: UITextField!
    @IBOutlet weak var Savebtn: UIButton!
    
    let email = "sunny@gmail.com"
    let password = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let loginDetails = UserDefaults.standard.value(forKey: "UsernameEmail")
        if loginDetails != nil
        {
            Usernametxt.text = UserDefaults.standard.value(forKey: "UsernameEmail") as? String
            Passwordtxt.text = UserDefaults.standard.value(forKey: "passwordEmail") as? String
        }
    }
    
    @IBAction func saveButto(_ sender: Any) {
        let alert = UIAlertController(title: "Saving", message: "Do you want to save credentials", preferredStyle: .alert)
        
        let yesbtn = UIAlertAction(title: "Yes", style: .default){ (action) in
            UserDefaults.standard.setValue(self.Usernametxt.text!, forKey: "UsernameEmail")
            UserDefaults.standard.setValue(self.Passwordtxt.text!, forKey: "passwordEmail")
            
            self.performSegue(withIdentifier: "Segue1", sender: self)
        }
        
        let nobtn = UIAlertAction(title: "No", style: .default){
            (action) in
            self.performSegue(withIdentifier: "Segue1", sender: self)
            print("You have not saved Login details")
        }
        alert.addAction(yesbtn)
        alert.addAction(nobtn)
        present(alert,animated: true,completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue1"
        {
            let desvc = segue.destination as! HomeViewController
            desvc.passedString = Usernametxt.text!
        }
    }
}


