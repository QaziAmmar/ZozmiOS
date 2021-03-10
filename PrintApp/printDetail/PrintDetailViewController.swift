//
//  PrintDetailViewController.swift
//  PrintApp
//
//  Created by Qazi on 03/03/2021.
//

import UIKit
import MessageUI


class PrintDetailViewController: UIViewController, UIGestureRecognizerDelegate {
    
    
    var firstarray = [String]()
    var secondarray = [String]()
    var thirdarray = [String]()
    var fourtharray = [String]()
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationController?.interactivePopGestureRecognizer!.delegate = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
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
    
    @IBAction func nextButton(_ sender: UIButton) {
        let emailVC = storyboard?.instantiateViewController(identifier: "SendEmailViewController") as! SendEmailViewController
        
        emailVC.firstArray = firstarray
        emailVC.secondArray = secondarray
        emailVC.thirdArray = thirdarray
        emailVC.fourthArray = fourtharray
        
        self.navigationController?.pushViewController(emailVC, animated: true)
    }
    
}



extension PrintDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "orderCell") as! OrderDetailTableViewCell
        
        if indexPath.row == 0 {
            
            if  firstarray.indices.contains(0) {
                cell.lblFourth.text = firstarray[0]
            } else {
                cell.lblFourth.text = ""
            }
            
            if  firstarray.indices.contains(1) {
                cell.lblThird.text = firstarray[1]
            } else {
                cell.lblThird.text = ""
            }
            
            if  firstarray.indices.contains(2) {
                cell.lblSecond.text = firstarray[2]
            } else {
                cell.lblSecond.text = ""
            }
            
            if  firstarray.indices.contains(3) {
                cell.lblFirst.text = firstarray[3]
            } else {
                cell.lblFirst.text = ""
            }
            
            
            
        } else if indexPath.row == 1 {
            
            if  secondarray.indices.contains(0) {
                cell.lblFourth.text = secondarray[0]
            } else {
                cell.lblFourth.text = ""
            }
            
            if  secondarray.indices.contains(1) {
                cell.lblThird.text = secondarray[1]
            } else {
                cell.lblThird.text = ""
            }
            
            if  secondarray.indices.contains(2) {
                cell.lblSecond.text = secondarray[2]
            } else {
                cell.lblSecond.text = ""
            }
            
            if  secondarray.indices.contains(3) {
                cell.lblFirst.text = secondarray[3]
            } else {
                cell.lblFirst.text = ""
            }
            
            
        } else if indexPath.row == 2 {
            
            if  thirdarray.indices.contains(0) {
                cell.lblFourth.text = thirdarray[0]
            } else {
                cell.lblFourth.text = ""
            }
            if  thirdarray.indices.contains(1) {
                cell.lblThird.text = thirdarray[1]
            } else {
                cell.lblThird.text = ""
            }
            
            if  thirdarray.indices.contains(2) {
                cell.lblSecond.text = thirdarray[2]
            } else {
                cell.lblSecond.text = ""
            }
            
            if  thirdarray.indices.contains(3) {
                cell.lblFirst.text = thirdarray[3]
            } else {
                cell.lblFirst.text = ""
            }
            
            
        } else if indexPath.row == 3 {
            
            if  fourtharray.indices.contains(0) {
                cell.lblFourth.text = fourtharray[0]
            } else {
                cell.lblFourth.text = ""
            }
            
            if  fourtharray.indices.contains(1) {
                cell.lblThird.text = fourtharray[1]
            } else {
                cell.lblThird.text = ""
            }
            
            if  fourtharray.indices.contains(2) {
                cell.lblSecond.text = fourtharray[2]
            } else {
                cell.lblSecond.text = ""
            }
            
            if  fourtharray.indices.contains(3) {
                cell.lblFirst.text = fourtharray[3]
            } else {
                cell.lblFirst.text = ""
            }
            
        }
        
        return cell
    }
    
}
