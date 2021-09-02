//
//  LocationManagerService.swift
//  weather-app-ios-group-1
//
//  Created by jack Maarek on 02/09/2021.
//

import Foundation
import CoreLocation

class LocationManagerService: NSObject, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    var currentCoordinates: CLLocation?

    func setupLocation() {
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations.isEmpty)
        if !locations.isEmpty, currentCoordinates == nil {
            currentCoordinates = locations.first
            locationManager.stopUpdatingLocation()
            requestWheatherForLocation()
        }
    }

    func requestWheatherForLocation() {
        guard let currentCoordinates = currentCoordinates else {
            return
        }

        let longitude = currentCoordinates.coordinate.longitude
        let latitude = currentCoordinates.coordinate.latitude

        print("\(longitude) | \(latitude)")
    }
}
