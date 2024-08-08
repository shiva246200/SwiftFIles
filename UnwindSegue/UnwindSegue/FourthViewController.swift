//
//  FourthViewController.swift
//  UnwindSegue
//
//  Created by ShivaT on 12/07/24.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.label.text = "data passed"
        
    }
}
