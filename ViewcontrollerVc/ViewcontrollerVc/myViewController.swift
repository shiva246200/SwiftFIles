//
//  myViewController.swift
//  ViewcontrollerVc
//
//  Created by ShivaT on 03/07/24.
//

import UIKit

class myViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did Load-2")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear - 2")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear - 2")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear - 2")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear - 2")
    }
    
    override func viewWillLayoutSubviews() {
        print("view will layoutsubviews - 2")
    }
    
    override func viewDidLayoutSubviews() {
        print("view did layoutsubviews - 2")
    }
    

}
