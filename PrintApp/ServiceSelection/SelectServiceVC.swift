//
//  SelectService.swift
//  PrintApp
//
//  Created by Qazi on 02/03/2021.
//
import UIKit
import Foundation

class SelectServiceVC: UIViewController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.interactivePopGestureRecognizer!.delegate = self
        overrideUserInterfaceStyle = .light
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

    @IBAction func backButtonAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
