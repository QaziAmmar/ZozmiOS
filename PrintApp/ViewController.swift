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
        let rightvc = self.revealViewController()?.rightViewController as! SideMenuViewController
        rightvc.sideMenuDelegate = self
    
    }
    
    @IBAction func sideMenuBtn(_ sender: UIButton) {
        self.revealViewController()?.rightRevealToggle(animated: true)
    }
    
}


extension ViewController: SideMenuProtocol {
    func firstNavAction() {
        let vc = (storyboard?.instantiateViewController(identifier: "TearmViewController"))! as TearmViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func secondNavAction() {
        let vc = (storyboard?.instantiateViewController(identifier: "BankViewController"))! as BankViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func thirdNavAction() {
        let vc = (storyboard?.instantiateViewController(identifier: "ContactViewController"))! as ContactViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    func fourthNavAction() {
        let vc = (storyboard?.instantiateViewController(identifier: "VersionViewController"))! as VersionViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    
}
