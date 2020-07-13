//
//  ViewController.swift
//  TextViewDelegates
//
//  Created by Julia Debecka on 13/07/2020.
//  Copyright © 2020 Julia Debecka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var textField1: UITextField!
	@IBOutlet weak var textField2: UITextField!
	@IBOutlet weak var textField3: UITextField!
	@IBOutlet weak var switcher: UISwitch!
	
	let zipCodeDelegate = ZipCodeDelegate()
	let cashDelegate = CashTextFieldDelegate()
	override func viewDidLoad() {
		super.viewDidLoad()
		textField2.placeholder = "$00.00"
		textField1.delegate = zipCodeDelegate
		textField2.delegate = cashDelegate
		textField3.delegate = self
		// Do any additional setup after loading the view.
	}
}

extension ViewController: UITextFieldDelegate {
	
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		if switcher.isOn {
			return true
		}
		return false
	}
}

