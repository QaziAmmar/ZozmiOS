//
//  SelectService.swift
//  PrintApp
//
//  Created by Qazi on 02/03/2021.
//
import UIKit
import Foundation

class SelectServiceVC: UIViewController {
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func backButtonAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
