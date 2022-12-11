//
//  ViewController.swift
//  StockFinalProject
//
//  Created by Carmen Z on 2022/12/10.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON
import SwiftSpinner

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    
    var arr: [String] = [String]()
    var indexSelected = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        getStock(self)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func getStock(_ sender: Any) {
        var url = "https://us-central1-whatsapp-analytics-2de0e.cloudfunctions.net/app/allstocks"
        SwiftSpinner.show("Getting Stock Values")
        
        AF.request(url).responseJSON { responseData in
            print(responseData)
            SwiftSpinner.hide()
            
            if responseData.error != nil {
                print(responseData.error!)
                return
            }
            
            let stockData = JSON(responseData.data as Any)
            
            self.arr = [String]()
            
            for stock in stockData {
                let stockJSON = JSON(stock.1)
                let name = stockJSON["CompanyName"].stringValue
                let price = stockJSON["Price"].floatValue
                let symbol = stockJSON["Symbol"].stringValue
                self.arr.append("\(name) | \(symbol) : $\(price)")
            }
            self.tblView.reloadData()
        }
    }
        
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arr.count;
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = arr[indexPath.row]
            return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        indexSelected = indexPath.row
        // Send the symbol to next VC
        performSegue(withIdentifier: "segueDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetails" {
            let Details = segue.destination as! DetailsViewController
            let selectedStock = arr[indexSelected]
            print(selectedStock)
            
            var stockName = ""
            var stockSymbol = ""
            var stockPrice = ""
            
            let separated = selectedStock.split(separator: "$")
            if let some = separated.last {
                if (selectedStock.starts(with: "M")) {
                    stockName = "Microsoft"
                    stockSymbol = "MSFT"
                    stockPrice = String(some)
                }
                if (selectedStock.starts(with: "T")) {
                    stockName = "Tesla"
                    stockSymbol = "TSLA"
                    stockPrice = String(some)
                }
                if (selectedStock.starts(with: "G")) {
                    stockName = "Google"
                    stockSymbol = "GOOGL"
                    stockPrice = String(some)
                }
                if (selectedStock.starts(with: "A")) {
                    stockName = "Amazon"
                    stockSymbol = "AMZN"
                    stockPrice = String(some)
                }
                
                Details.name = "Name : \(stockName)"
                Details.symbol = "Symbol : \(stockSymbol)"
                Details.price = "Price : \(stockPrice)"
            }
                
            }
            
            
    }
        
        
        
        
}
    
