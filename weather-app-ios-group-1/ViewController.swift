//
//  ViewController.swift
//  weather-app-ios-group-1
//
//  Created by jack Maarek on 02/09/2021.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!

    var models = [Weather]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Daily Cell
        table.register(DailyTableViewCell.nib(), forCellReuseIdentifier: DailyTableViewCell.identifier)

        // Weather Cell
        table.register(WeatherTableViewCell.nib(), forCellReuseIdentifier: WeatherTableViewCell.identifier)

        table.delegate = self
        table.dataSource = self
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        LocationManagerService().setupLocation()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

}
