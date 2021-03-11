//
//  SendEmailViewController.swift
//  PrintApp
//
//  Created by Qazi on 08/03/2021.
//

import UIKit
import MessageUI


class SendEmailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField! // this is eaqual to
    
    var firstArray = [String]()
    var secondArray = [String]()
    var thirdArray = [String]()
    var fourthArray = [String]()
    
    var firstString = ""
    var secondString = ""
    var thirdString = ""
    var fourthString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        firstString = concatinateAllString(tempArray: firstArray)
        secondString = concatinateAllString(tempArray: secondArray)
        thirdString = concatinateAllString(tempArray: thirdArray)
        fourthString = concatinateAllString(tempArray: fourthArray)
        overrideUserInterfaceStyle = .light
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

    
    @IBAction func submitBtn(_ sender: Any) {
// first check either fields are empty of or not.
        
        if (phoneNumberTextField.text!.isEmpty) || (nameTextField.text!.isEmpty) {
//            please fill all fields
            showAlert(message: "Please fill all the fields")
        } else {
            
            if checkPhoneNumber(phone: String(phoneNumberTextField.text!)) {
    //            send messags
//                This function will work on only device
                sendEmail()
                
            } else {
    //            please enter correct phone number
                showAlert(message: "Please enter correct phone number")
            }
        }
    }
    
    
    func checkPhoneNumber(phone: String) -> Bool {
        
        let first2 = String(phone.prefix(2))
        if first2 == "05" {
//            check the count of charcter
            if phone.count == 10 {
                return true
            } else {
//                please enter 10 char
                showAlert(message: "please enter 10 character")
                return false
            }
        }
//        please enter correct phone Number.
        print("please enter correct phone Number")
        return false
    }
    
    
    func showAlert(message: String) {
        
        let alert = UIAlertController(title: "Zozm", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["zozmplus@gmail.com"])
            
            mail.setMessageBody("<p>" + firstString + ", \n" + secondString + ", \n" + thirdString + ", \n" + fourthString + "\n" +  "</p>", isHTML: true)
//            mail.setMessageBody("<p> test email </p>", isHTML: true)

            self.present(mail, animated: true)
        } else {
            // show failure alert
        }
    }
}

extension SendEmailViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    func concatinateAllString(tempArray: [String]) -> String {
        var tempString = ""
        for temp in tempArray {
            tempString += " " + temp
        }
        
        return tempString
    }
    
    
}
