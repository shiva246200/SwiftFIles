//
//  ViewController.swift
//  ViewcontrollerVc
//
//  Created by ShivaT on 03/07/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load - 1")
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear - 1")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear - 1")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear - 1")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear - 1")
    }
    
    override func viewWillLayoutSubviews() {
        print("view will layoutsubviews - 1")
    }
    
    override func viewDidLayoutSubviews() {
        print("view did laoutsubviews - 1")
    }
}

