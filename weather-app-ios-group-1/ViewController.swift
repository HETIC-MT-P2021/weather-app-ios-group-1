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
        ApiService().getCurrentForecast(lat: 0, long: 0) { result in
            switch result {
            case nil:
                print("fuck")
            default:
                guard let current = result else {/*ERROR CODE HERE*/ return}
                print(current.weather[0].weatherDescription)
            }
        }

    }
}
