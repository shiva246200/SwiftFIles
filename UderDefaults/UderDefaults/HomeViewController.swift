//
//  HomeViewController.swift
//  UderDefaults
//
//  Created by ShivaT on 18/07/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    var passedString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mylabel.text = passedString
    }
    
    
}
