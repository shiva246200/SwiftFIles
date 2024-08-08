//
//  ViewController.swift
//  ViewController
//
//  Created by ShivaT on 28/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 || indexPath.row == 3 || indexPath.row == 6 || indexPath.row == 9 || indexPath.row == 12
        {
            let cell : TextTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TextTableViewCell") as! TextTableViewCell
            return cell
        }
        else if  indexPath.row == 1 || indexPath.row == 4 || indexPath.row == 7 || indexPath.row == 10 || indexPath.row == 13
        {
            let cell : ImageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell") as! ImageTableViewCell
            return cell
        }
        else
        {
            let cell : ButtonTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ButtonTableViewCell") as! ButtonTableViewCell
            return cell
        }
    }
    
    
//    override func loadView() {
//
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.table.register(UINib.init(nibName: "TextTableViewCell", bundle: .main), forCellReuseIdentifier: "TextTableViewCell")
        
        self.table.register(UINib.init(nibName: "ImageTableViewCell", bundle: .main), forCellReuseIdentifier: "ImageTableViewCell")
        
        self.table.register(UINib.init(nibName: "ButtonTableViewCell", bundle: .main), forCellReuseIdentifier: "ButtonTableViewCell")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
}

