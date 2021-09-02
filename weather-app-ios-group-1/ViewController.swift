//
//  ViewController.swift
//  weather-app-ios-group-1
//
//  Created by jack Maarek on 02/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentForecast = ApiService().getCurrentForecast(lat: 0, lng: 0)
        
        debugPrint(currentForecast ?? "Is nil")
    }
}
