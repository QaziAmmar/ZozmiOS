//
//  ViewController.swift
//  PrintApp
//
//  Created by Qazi on 01/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideMenuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        
    }
    
    @IBAction func sideMenuBtn(_ sender: UIButton) {
                self.revealViewController()?.rightRevealToggle(animated: true)
    }
    
}

