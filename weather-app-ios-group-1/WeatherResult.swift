//
//  Weather.swift
//  weather-app-ios-group-1
//
//  Created by FAYCAL TOURE on 15/07/2021.
//

import Foundation

struct Weather {
    var dt_txt: String
    var temp: String
    var temp_min: String
    var temp_max: String
    var humidity: String
    var main: String
    var description: String
    var icon: String
    var speed: String
    var deg: String
    var gust: String
    
    enum CodingKeys: String, CodingKey {
        case dt_txt
        case mainAdditionalInfo
        case weatherAdditionalInfo
        case WindAdditionalInfo
    }
    
    enum Main: String, CodingKey {
        case temp
        case temp_min
        case temp_max
        case humidity
    }

    enum Weather: String, CodingKey {
        case main
        case description
        case icon
    }
    
    enum Wind: String, CodingKey {
        case speed
        case deg
        case gust
    }
}

extension Weather: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        dt_txt = try values.decode(String.self, forKey: .dt_txt)
        
        let temperature = try values.nestedContainer(keyedBy: Main.self, forKey: .mainAdditionalInfo)
        temp = try temperature.decode(String.self, forKey: .temp)
        temp_min = try temperature.decode(String.self, forKey: .temp_min)
        temp_max = try temperature.decode(String.self, forKey: .temp_max)
        humidity = try temperature.decode(String.self, forKey: .humidity)
        
        let weather = try values.nestedContainer(keyedBy: Weather.self, forKey: .weatherAdditionalInfo)
        main = try weather.decode(String.self, forKey: .main)
        description = try weather.decode(String.self, forKey: .description)
        icon = try weather.decode(String.self, forKey: .icon)

        let wind = try values.nestedContainer(keyedBy: Wind.self, forKey: .WindAdditionalInfo)
        speed = try wind.decode(String.self, forKey: .speed)
        deg = try wind.decode(String.self, forKey: .deg)
        gust = try wind.decode(String.self, forKey: .gust)
    }
}

struct City: Decodable {
    let name: String
    let lat: String
    let lon: String
    let country: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case lat
        case lon
        case country
    }
}

struct WeatherResult: Decodable {
    let cod: String
    let list: [Weather]
    let country: City
}
