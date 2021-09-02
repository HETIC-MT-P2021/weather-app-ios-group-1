//
//  DailyTableViewCell.swift
//  weather-app-ios-group-1
//
//  Created by jack Maarek on 02/09/2021.
//

import UIKit

class DailyTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    static let identifier = "DailyTableViewCell"
    static func nib() -> UINib {
        return UINib(
            nibName: "DailyTableViewCell",
            bundle: nil
        )
    }
}
