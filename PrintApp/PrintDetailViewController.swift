//
//  PrintDetailViewController.swift
//  PrintApp
//
//  Created by Qazi on 03/03/2021.
//

import UIKit

class PrintDetailViewController: UIViewController {

    @IBOutlet weak var firstLbl: UILabel!
    @IBOutlet weak var secondLbl: UILabel!
    @IBOutlet weak var thirdLbl: UILabel!
    @IBOutlet weak var fourthLbl: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    var firstString = ""
    var secondString = ""
    var thirdString = ""
    var fourthString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        firstLbl.text = firstString
        secondLbl.text = secondString
        thirdLbl.text = thirdString
        fourthLbl.text = fourthString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backBtnAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func submitBtn(_ sender: Any) {
//        send data to gmail.
    }
}
