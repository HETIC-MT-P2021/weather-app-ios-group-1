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

        ApiService().getCurrentForecast(lat: 49.184719, long: -0.360310) { response in
            debugPrint(response.daily)
        }
    }
}
