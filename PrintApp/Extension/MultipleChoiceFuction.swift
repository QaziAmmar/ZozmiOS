//
//  MultipleChoiceFuction.swift
//  PrintApp
//
//  Created by Qazi on 08/03/2021.
//

import Foundation
extension UIViewController {
    
    func setViewColor( stringArray: inout [String], value: String) ->  UIColor {
        if let index = stringArray.firstIndex(of: value) {
//            value found
            stringArray.remove(at: index) // array is now ["world"]
            
            return #colorLiteral(red: 0.8784313725, green: 0.8784313725, blue: 0.8784313725, alpha: 1)
        }
        stringArray.append(value)
        return #colorLiteral(red: 0.1843137255, green: 0.5019607843, blue: 0.9294117647, alpha: 1)
    }
    
}
