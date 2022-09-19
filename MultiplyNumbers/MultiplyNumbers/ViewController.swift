//
//  ViewController.swift
//  MultiplyNumbers
//
//  Created by Carmen Z on 2022/9/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtNumberOne: UITextField!
    @IBOutlet weak var txtSecondNumber: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func multiply(_ sender: Any) {
        let firstNumber = Int(txtNumberOne.text ?? "0") ?? 0
        let secondNumber = Int(txtSecondNumber.text ?? "0") ?? 0
        
        let product = firstNumber * secondNumber
        
        lblResult.text = String(product)
    }

    
}

