//
//  SideMeneViewController.swift
//  PrintApp
//
//  Created by Bills Mac on 03/03/2021.
//

import Foundation
import UIKit

class SideMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
    }
    func closeRevealController() {
        self.revealViewController()?.rightRevealToggle(animated: false)
    }
    
    
    @IBAction func firstBtnAction(_ sender: Any) {
//        let firstVC = self.storyboard?.instantiateViewController(withIdentifier: "SelectServiceVC") as! SelectServiceVC
//        self.navigationController?.pushViewController (firstVC, animated: true)
        closeRevealController()
        
    }
    
    @IBAction func secondBtnAction(_ sender: Any) {
        closeRevealController()
    }
    
    @IBAction func thirdBtnAction(_ sender: Any) {
        closeRevealController()
    }
    
    @IBAction func forthBtnAction(_ sender: Any) {
        closeRevealController()
    }
}
