//
//  ZipCodeDelegate.swift
//  TextViewDelegates
//
//  Created by Julia Debecka on 13/07/2020.
//  Copyright © 2020 Julia Debecka. All rights reserved.
//

import Foundation
import UIKit
class ZipCodeDelegate: NSObject, UITextFieldDelegate {
	
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		guard let text = textField.text else { return true }
		
		if string == "" {
			return true
		}
		
		guard let _ = Int(string) else { return false }
		let newLength = text.count + string.count - range.length
		return newLength <= 5
	}
	
}
