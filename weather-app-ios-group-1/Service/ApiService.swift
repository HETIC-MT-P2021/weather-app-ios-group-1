//
//  ApiService.swift
//  weather-app-ios-group-1
//
//  Created by Jean-Jacques Akakpo on 02/09/2021.
//

import Foundation
import Alamofire

class ApiService {

    // getCurrentForecast doc
    func getCurrentForecast(lat: Double, long: Double, completionHandler: @escaping (Current?) -> Void) {
        let parameters = [
            "lat": lat,
            "lon": long,
            "exclude": "minutely,hourly,alerts",
            "appid": "d3c596d8596ec03a4973fb0fc0222e66"
        ] as [String: Any]

        performRequest(
            url: "https://api.openweathermap.org/data/2.5/onecall",
            params: parameters,
            completion: completionHandler
        )
    }

    // performRequest doc
    func performRequest(url: String, params: Parameters?, completion: @escaping (Current?) -> Void) {
        AF.request(url, parameters: params).responseDecodable(of: WeatherAPIResponse.self) { (response) in
          guard let WeatherAPIResponse = response.value else { return }
            completion(WeatherAPIResponse.current)
        }
    }
}
