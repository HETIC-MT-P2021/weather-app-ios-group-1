//
//  WeatherService.swift
//  weather-app-ios-group-1
//
//  Created by FAYCAL TOURE on 15/07/2021.
//

import Foundation
import Alamofire

typealias CallbackWeathers = ([WeatherModel]) -> Void

extension DateFormatter {
    static let fullISO8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }()
}

class WeatherService {
    
    static let alamofireSession = Alamofire.Session.init()
    
    static func retrieveWeathers(city: String, lang: String, api: String, callback: @escaping CallbackWeathers) {
        
        let url =
        "https://api.openweathermap.org/data/2.5/forecast?q=\(city),\(lang)&lang=\(lang)&units=metric&appid=\(api)"
        
        alamofireSession.request(url).responseData { (response) in
            switch response.result {
            
            case .success(let data):
debugPrint(data)
                do {
                    let jsonDecoder = JSONDecoder()
                    jsonDecoder.dateDecodingStrategy = .formatted(DateFormatter.fullISO8601)

                    
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
