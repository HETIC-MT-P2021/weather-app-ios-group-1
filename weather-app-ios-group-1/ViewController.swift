//
//  ViewController.swift
//  weather-app-ios-group-1
//
//  Created by Jean-Jacques Akakpo on 12/07/2021.
//

import UIKit

class ViewController: UIViewController {

    var allWheaters = [Weather]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        WeatherService.retrieveWeathers(city: "Paris", lang: "fr", api:"89196e86352c234a9e94407b0110bbc0") { (weaters) in
            self.allWheaters.removeAll()
            self.allWheaters.append(contentsOf: weaters)
                    
        }
    }
    
    
}

