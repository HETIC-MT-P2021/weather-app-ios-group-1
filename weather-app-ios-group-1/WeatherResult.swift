//
//  Weather.swift
//  weather-app-ios-group-1
//
//  Created by FAYCAL TOURE on 15/07/2021.
//

import Foundation

struct WeatherModel: Decodable {
    let main: Main?
    let weather: Weather?
    let wind: Wind?
    let dt_txt: String
    
    enum CodingKeys: String, CodingKey {
        case main
        case weather
        case wind
        case dt_txt
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        main = try container.decodeIfPresent(Main.self, forKey: .main)
        weather = try container.decodeIfPresent(Weather.self, forKey: .weather)
        wind = try container.decodeIfPresent(Wind.self, forKey: .wind)
        dt_txt = try container.decode(String.self, forKey: .dt_txt)
    }
}

struct Main: Decodable {
    let temp: Double
    let temp_min: Double
    let temp_max: Double
    let humidity: Double
}

struct Weather: Decodable {
    let main: String
    let description: String
    let icon: String
}

struct Wind: Decodable {
    
    let speed: Double
    let deg: Double
    let gust: Double
}

struct CityCoord: Decodable {
    let latitude: Double
    let longitude: Double
    
    enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "long"
    }
}

struct City: Decodable {
    let name: String
    let country: String
    let coord: CityCoord?
    
    enum CodingKeys: String, CodingKey {
        case name
        case country
        case coord
    }
}


struct WeatherResult: Decodable {
    let cod: String
    let message: Double
    let cnt: Double
    let list: [WeatherModel]
    let city: City?
}
