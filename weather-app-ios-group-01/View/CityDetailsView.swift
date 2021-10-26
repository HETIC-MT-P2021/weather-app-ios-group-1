//
//  CityDetailsView.swift
//  weather-app-ios-group-01
//
//  Created by jack Maarek on 13/09/2021.
//

import SwiftUI

struct CityDetailsView: View {
    var viewModel: CityViewModel

    init(viewModel: CityViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text(viewModel.cityName)
                .font(.title)
            Image(viewModel.icon)
                .scaledToFill()
                .colorInvert()
            Text(viewModel.temperature + "°C")
            Text("Ressenti " + viewModel.feelsLike + "°C")
                .bold()
            Spacer()

            Text(viewModel.date)
                .font(.headline)
        }
    }
}
