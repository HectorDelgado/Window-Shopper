//
//  CurrencyTextField.swift
//  06-Window Shopper
//
//  Created by Hector Delgado on 10/1/19.
//  Copyright © 2019 hector delgado. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        // Create custom UILabel
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        // Set custom UILabels text as the local currency symbol
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        clipsToBounds = true
        backgroundColor = #colorLiteral(red: 0.9967493415, green: 0.9917669892, blue: 1, alpha: 0.2497664742)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let placeHolderText = placeholder {
            let customPlaceHolder = NSAttributedString(string: placeHolderText, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = customPlaceHolder
            
            textColor = UIColor.white
        }
    }
}
