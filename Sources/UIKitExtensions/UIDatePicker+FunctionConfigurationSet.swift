//
//  UIDatePickerFucntions.swift
//  ViewConfigurator-iOS
//
//  Created by Andrii Pazynych on 27.03.18.
//  Copyright © 2018 ImagineOn GmbH. All rights reserved.
//

import UIKit
public extension ConfigurationSet where Base: UIDatePicker {

    func date(_ date: Date, animated: Bool) -> Self {
        return set { ( configurable: Base ) in
            configurable.setDate(date, animated: animated)
        }
    }
}
