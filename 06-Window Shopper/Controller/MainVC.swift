//
//  ViewController.swift
//  06-Window Shopper
//
//  Created by Hector Delgado on 10/1/19.
//  Copyright © 2019 hector delgado. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultsLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5521749854, blue: 0.1844306886, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultsLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        resultsLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultsLbl.isHidden = false
                hoursLbl.isHidden = false
                
                resultsLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }


}

