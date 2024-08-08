//
//  ViewController.swift
//  UnwindSegue
//
//  Created by ShivaT on 12/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func unwindToone(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
}

