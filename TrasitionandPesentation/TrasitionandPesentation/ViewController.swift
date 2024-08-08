//
//  ViewController.swift
//  TrasitionandPesentation
//
//  Created by ShivaT on 03/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var Button : UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .red
        btn.setTitle("Tap me", for: .normal)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(Button)
        Button.center = view.center
        Button.addTarget(self, action: #selector(didselect), for: .touchUpInside)
    }
    
    @objc private func didselect()
    {
        let vc = SecondViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .partialCurl
        present(vc,animated: true)
    }
}

