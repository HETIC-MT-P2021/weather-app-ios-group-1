//
//  WeatherService.swift
//  weather-app-ios-group-1
//
//  Created by FAYCAL TOURE on 15/07/2021.
//

import Foundation
import Alamofire

typealias CallbackWeathers = ([Weather]) -> Void

class WeatherService {
    
    static let alamofireSession = Alamofire.Session.init()
    
    static func retrieveWeathers(city: String, lang: String, api: String, callback: @escaping CallbackWeathers) {
        
        let url =
        "https://api.openweathermap.org/data/2.5/forecast?q=\(city),\(lang)&lang=\(lang)&units=metric&appid=\(api)"
        
        alamofireSession.request(url).responseData { (response) in
            switch response.result {
            case .success(let data):
                
                do {
                    let jsonDecoder = JSONDecoder()
                    
                    let weatherResult = try jsonDecoder.decode(WeatherResult.self, from: data)
                    
                    callback(weatherResult.list)
                } catch let error {
                    print("error : \(error)")
                }
                
                break
            case .failure(let error):
                print("error : \(error)")

                break
                
            }
        }
    }
    
    static func getMainIcon(posterPath: String) -> String {
        return ""
    }

}