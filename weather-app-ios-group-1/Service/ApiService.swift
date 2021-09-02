//
//  ApiService.swift
//  weather-app-ios-group-1
//
//  Created by Jean-Jacques Akakpo on 02/09/2021.
//

import Foundation
import Alamofire

class ApiService {
    func getCurrentForecast(lat: Double, lng: Double) -> Current? {
        var currentForecast: Current?
        
        AF.request("https://api.openweathermap.org/data/2.5/onecall?lat=48.8534&lon=2.3488&exclude=minutely,hourly,alerts&appid=d3c596d8596ec03a4973fb0fc0222e66").responseData { response in
            switch response.result {
            case .failure(let error):
                print(error)
            case .success(let data):
                do {
                    let forecast = try JSONDecoder().decode(WeatherAPIResponse.self, from: data)
                    currentForecast = forecast.current
                } catch let error {
                    print(error)
                    currentForecast = nil
                }
            }
        }
        
        return currentForecast
    }
}
