//
//  WeatherApiResponse.swift
//  weather-app-ios-group-1
//
//  Created by Jean-Jacques Akakpo on 02/09/2021.
//

import Foundation

// MARK: - WeatherAPIResponse
struct WeatherAPIResponse: Codable {
    let lat, lon: Double
    let current: Current
    let daily: [Daily]

    enum CodingKeys: String, CodingKey {
        case lat, lon
        case current, daily
    }
}

// MARK: - Current
struct Current: Codable {
    let dt, sunrise, sunset: Int
    let temp, feelsLike: Double
    let humidity: Int
    let windSpeed: Double
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt, sunrise, sunset, temp
        case feelsLike = "feels_like"
        case humidity
        case windSpeed = "wind_speed"
        case weather
    }
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, weatherDescription, icon: String

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }
}

// MARK: - Daily
struct Daily: Codable {
    let dt: Int
    let temp: Temp
    let weather: [Weather]

    enum CodingKeys: String, CodingKey {
        case dt
        case temp
        case weather
    }
}

// MARK: - FeelsLike
struct FeelsLike: Codable {
    let day, night, eve, morn: Double
}

// MARK: - Temp
struct Temp: Codable {
    let day, min, max, night: Double
    let eve, morn: Double
}