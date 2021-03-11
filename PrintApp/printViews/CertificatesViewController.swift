//
//  CertificatesViewController.swift
//  PrintApp
//
//  Created by Qazi on 04/03/2021.
//

import UIKit

class CertificatesViewController: UIViewController, UIGestureRecognizerDelegate {
    
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

    var firstString = ""
    var secondString = ""
    var thirdString = ""
    var fourthString = ""
    
    var firstarray = [String]()
    var secondarray = [String]()
    var thirdarray = [String]()
    var fourtharray = [String]()
    
    
    //    1 Section of View
    @IBOutlet weak var first1View: DesignableView!
    @IBOutlet weak var first2View: DesignableView!
    @IBOutlet weak var first3View: DesignableView!
    @IBOutlet weak var first4View: DesignableView!
    
    //    2 Section of View
    @IBOutlet weak var second1View: DesignableView!
    @IBOutlet weak var second2View: DesignableView!
    @IBOutlet weak var second3View: DesignableView!
    @IBOutlet weak var second4View: DesignableView!
    
    //    3 Section of View
    @IBOutlet weak var third1View: DesignableView!
    @IBOutlet weak var third2View: DesignableView!
    @IBOutlet weak var third3View: DesignableView!
    @IBOutlet weak var third4View: DesignableView!
    
    //    4 Section of View
    @IBOutlet weak var fourth1View: DesignableView!
    @IBOutlet weak var fourth2View: DesignableView!
    @IBOutlet weak var fourth3View: DesignableView!
    @IBOutlet weak var fourth4View: DesignableView!
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func moveBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func submitBtn(_ sender: UIButton) {
        
//        print(firstString)
        
        let printDetailVC = (storyboard?.instantiateViewController(identifier: "PrintDetailViewController"))! as PrintDetailViewController
                printDetailVC.firstarray = firstarray
                printDetailVC.secondarray = secondarray
               
        
        self.navigationController?.pushViewController(printDetailVC, animated: true)
        
    }
    
    
//    1 Section of Buttons
    @IBAction func first1BtnAction(_ sender: Any) {
        
//        first1View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        first2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        firstString = "طباعة ستاند"
        first1View.backgroundColor = setViewColor(stringArray: &firstarray, value: firstString)
    }
    @IBAction func first2BtnAction(_ sender: Any) {
//        first1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        first3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        firstString = "طباعة رول آب"
        first2View.backgroundColor = setViewColor(stringArray: &firstarray, value: firstString)
        
    }
    @IBAction func first3BtnAction(_ sender: Any) {
//        first1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first3View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        first4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        firstString = "طباعة فلكس"
        first3View.backgroundColor = setViewColor(stringArray: &firstarray, value: firstString)
    }
    @IBAction func first4BtnAction(_ sender: Any) {
//        first1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first4View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
        
        firstString = "طباعة بنر"
        first4View.backgroundColor = setViewColor(stringArray: &firstarray, value: firstString)
    }
    
    
    //    2 Section of Buttons
    @IBAction func second1(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        secondString = "طباعة ملصق شفاف"
        second1View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
        
    }
    @IBAction func second2(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        secondString = "طباعة ملصق ورق"
        second2View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    @IBAction func second3(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        secondString = "طباعة ملصق بلاستيك"
        second3View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    @IBAction func second4(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
        secondString = "طباعة وايت فلم"
        second4View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    
    
    //    3 Section of Buttons
    @IBAction func third1BtnAction(_ sender: Any) {
//        third1View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        third2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        thirdString = " 60 x 60سم"
        third1View.backgroundColor = setViewColor(stringArray: &thirdarray, value: thirdString)
    }
    @IBAction func third2BtnAction(_ sender: Any) {
//        third1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        third3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        thirdString = "3X1 م"
        third2View.backgroundColor = setViewColor(stringArray: &thirdarray, value: thirdString)
    }
    @IBAction func third3BtnAction(_ sender: Any) {
//        third1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third3View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        third4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        thirdString = "2X1 م"
        third3View.backgroundColor = setViewColor(stringArray: &thirdarray, value: thirdString)
    }
    @IBAction func third4BtnAction(_ sender: Any) {
//        third1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third4View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
        thirdString = "1X1 م"
        third4View.backgroundColor = setViewColor(stringArray: &thirdarray, value: thirdString)
    }
    
    
    //    4 Section of Buttons
    
    @IBAction func fourth1BtnAction(_ sender: Any) {
//        fourth1View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        fourth2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        fourthString = " 50 X 50سم"
        fourth1View.backgroundColor = setViewColor(stringArray: &fourtharray, value: fourthString)
    }
    @IBAction func fourth2BtnAction(_ sender: Any) {
//        fourth1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        fourth3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        fourthString = "30 X 30 سم"
        fourth2View.backgroundColor = setViewColor(stringArray: &fourtharray, value: fourthString)
    }
    @IBAction func fourth3BtnAction(_ sender: Any) {
//        fourth1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth3View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        fourth4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        fourthString = "3 X 2 م"
        fourth3View.backgroundColor = setViewColor(stringArray: &fourtharray, value: fourthString)
        
    }
    @IBAction func fourth4BtnAction(_ sender: Any) {
//        fourth1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth4View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//
        fourthString = "2 X 2 م"
        fourth4View.backgroundColor = setViewColor(stringArray: &fourtharray, value: fourthString)
    }

}
