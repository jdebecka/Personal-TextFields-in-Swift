//
//  CashTextFieldDelegate.swift
//  TextViewDelegates
//
//  Created by Julia Debecka on 13/07/2020.
//  Copyright © 2020 Julia Debecka. All rights reserved.
//

import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {

	var amt = 0
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		
		if let digit = Int(string) {
			amt = amt * 10 + digit
		}
		
		if string == "" {
			amt = amt/10
		}
		textField.text = updateTextFieldValue()
		return false
	}
	
	func updateTextFieldValue() -> String? {
		let formatter = NumberFormatter()
		formatter.numberStyle = .currency
		formatter.locale = Locale(identifier: "en_US")
		
		let number = Double(amt/100) + Double(amt%100)/100
		
		return formatter.string(from: NSNumber(value: number))
	}
}
