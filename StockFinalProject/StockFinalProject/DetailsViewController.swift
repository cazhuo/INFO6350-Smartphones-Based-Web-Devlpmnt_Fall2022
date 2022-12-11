//
//  DetailsViewController.swift
//  StockFinalProject
//
//  Created by Carmen Z on 2022/12/10.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var companySymbol: UILabel!
    @IBOutlet weak var companyPrice: UILabel!
    
    var name = ""
    var symbol = ""
    var price = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        companyName.text = name
        companySymbol.text = symbol
        companyPrice.text = price 
        // Do any additional setup after loading the view.
    }
    


}
