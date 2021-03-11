//
//  CPaperViewController.swift
//  PrintApp
//
//  Created by Qazi on 04/03/2021.
//

import UIKit

class CPaperViewController: UIViewController, UIGestureRecognizerDelegate {
    
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
    
    
    //    2 Section of View
    @IBOutlet weak var second1View: DesignableView!
    @IBOutlet weak var second2View: DesignableView!
    @IBOutlet weak var second3View: DesignableView!
    @IBOutlet weak var second4View: DesignableView!
    @IBOutlet weak var second5View: DesignableView!
    @IBOutlet weak var second6View: DesignableView!
    @IBOutlet weak var second7View: DesignableView!
    @IBOutlet weak var second8View: DesignableView!
    
    //    3 Section of View
    @IBOutlet weak var third1View: DesignableView!
    @IBOutlet weak var third2View: DesignableView!
    
    //    4 Section of View
    @IBOutlet weak var fourth1View: DesignableView!
    @IBOutlet weak var fourth2View: DesignableView!
    @IBOutlet weak var fourth3View: DesignableView!
    


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
        
        firstString = "مطوية"
        first1View.backgroundColor = setViewColor(stringArray: &firstarray, value: firstString)
    }
    @IBAction func first2BtnAction(_ sender: Any) {
//        first1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        first2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
        
        firstString = "بروشور"
        first2View.backgroundColor = setViewColor(stringArray: &firstarray, value: firstString)

    }
    //    2 Section of Buttons
    @IBAction func second1BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        secondString = "10000"
        second1View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
        
    }
    @IBAction func second2BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        secondString = "5000"
        second2View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    @IBAction func second3BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        secondString = "2000"
        second3View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    @IBAction func second4BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        secondString = "1000"
        second4View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    
    
    @IBAction func second5BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        secondString = "200000"
        second5View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
        
    }
    @IBAction func second6BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        secondString = "100000"
        second6View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    @IBAction func second7BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        secondString = "50000"
        second7View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    @IBAction func second8BtnAction(_ sender: Any) {
//        second1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second4View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second5View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second6View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second7View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        second8View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
        
        secondString = "20000"
        second8View.backgroundColor = setViewColor(stringArray: &secondarray, value: secondString)
    }
    
    //    3 Section of Buttons
    @IBAction func third1BtnAction(_ sender: Any) {
//        third1View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        third2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        thirdString = "وجهين"
        third1View.backgroundColor = setViewColor(stringArray: &thirdarray, value: thirdString)
    }
    @IBAction func third2BtnAction(_ sender: Any) {
//        third1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        third2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
        
        thirdString = "وجه"
        third2View.backgroundColor = setViewColor(stringArray: &thirdarray, value: thirdString)
    }
    
    //    4 Section of Buttons
    
    @IBAction func fourth1BtnAction(_ sender: Any) {
//        fourth1View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        fourth2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        fourthString = "نص A4"
        fourth1View.backgroundColor = setViewColor(stringArray: &fourtharray, value: fourthString)
        
    }
    @IBAction func fourth2BtnAction(_ sender: Any) {
//        fourth1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth2View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
//        fourth3View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        
        fourthString = "A4"
        fourth2View.backgroundColor = setViewColor(stringArray: &fourtharray, value: fourthString)
    }
    @IBAction func fourth3BtnAction(_ sender: Any) {
//        fourth1View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth2View.backgroundColor = #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
//        fourth3View.backgroundColor = #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
        
        fourthString = "A3"
        fourth3View.backgroundColor = setViewColor(stringArray: &fourtharray, value: fourthString)
    }
}
