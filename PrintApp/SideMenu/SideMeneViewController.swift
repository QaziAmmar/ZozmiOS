//
//  SideMeneViewController.swift
//  PrintApp
//
//  Created by Bills Mac on 03/03/2021.
//

import Foundation
import UIKit

class SideMenuViewController: UIViewController {
    
    var firstAction: (() -> Void)?
    var secondAction: (() -> Void)?
    var thirdAction: (() -> Void)?
    var fourthAction: (() -> Void)?
    
    var sideMenuDelegate: SideMenuProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        overrideUserInterfaceStyle = .light
        
    }
    func closeRevealController() {
        self.revealViewController()?.rightRevealToggle(animated: false)
    }
    @IBAction func firstBtnAction(_ sender: Any) {
        closeRevealController()
        sideMenuDelegate!.firstNavAction()
    }
    
    @IBAction func secondBtnAction(_ sender: Any) {
        closeRevealController()
        sideMenuDelegate!.secondNavAction()
    }
    
    @IBAction func thirdBtnAction(_ sender: Any) {
        closeRevealController()
        sideMenuDelegate!.thirdNavAction()
    }
    
    @IBAction func forthBtnAction(_ sender: Any) {
        closeRevealController()
        sideMenuDelegate?.fourthNavAction()
    }
}



protocol SideMenuProtocol {
    func firstNavAction()
    func secondNavAction()
    func thirdNavAction()
    func fourthNavAction()
}
