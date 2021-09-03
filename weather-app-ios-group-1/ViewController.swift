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
        ApiService().getCurrentForecast(lat: 49.184719, long: -0.360310) { current in
            debugPrint(current)
        }

        ApiService().getNextDailyForecast(lat: 49.184719, long: -0.360310) { daily in
            debugPrint(daily)
        }
    }
}
