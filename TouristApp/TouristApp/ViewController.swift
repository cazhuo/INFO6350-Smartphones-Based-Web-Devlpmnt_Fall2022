//
//  ViewController.swift
//  TouristApp
//
//  Created by Carmen Z on 2022/10/1.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let touristPlacesNames = ["Beijing", "London", "Paris", "Seattle", "Tokyo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return touristPlacesNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TouristCell
        let cell = Bundle.main.loadNibNamed("TouristCell", owner: self)?.first as! TouristCell
        cell.imgPlace.image = UIImage(named: touristPlacesNames[indexPath.row])
        cell.lblPlace.text = touristPlacesNames[indexPath.row]
        
        return cell
    }


}

