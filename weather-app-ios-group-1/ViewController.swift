//
//  ViewController.swift
//  weather-app-ios-group-1
//
//  Created by jack Maarek on 02/09/2021.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate {
    //weather for the next days
    @IBOutlet var table: UITableView!
    var models = [Weather]()
    
    let locationManager = CLLocationManager()
    var currentLocation: CLLocation?



    
    override func viewDidLoad() {
        super.viewDidLoad()

        table .register(HourlyTableViewCell.nib(), forCellReuseIdentifier: HourlyTableViewCell.identifier)
        table .register(WeatherTableViewCell.nib(), forCellReuseIdentifier: WeatherTableViewCell.identifier)

        table.delegate = self
        table.dataSource = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupLocation()
    }
    //location
    func setupLocation() {
            
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
        
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if !locations.isEmpty, currentLocation == nil  {
            currentLocation = locations.first
            locationManager.stopUpdatingLocation()
            requestWeatherForLocation()
        }
    }
        
    func requestWeatherForLocation() {
        guard let currentLocation = currentLocation else {
            return
        }
        let long = currentLocation.coordinate.longitude
        let lat = currentLocation.coordinate.latitude
            
        print("\(long) | \(lat)")

    }

    
    //table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}


