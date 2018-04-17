//
//  UIActionSheetFunctions.swift
//  ViewConfigurator-iOS
//
//  Created by Andrii Pazynych on 26.03.18.
//  Copyright © 2018 ImagineOn GmbH. All rights reserved.
//
import UIKit
public extension ConfigurationSet where Base: UIActionSheet {

    func addButton(withTitle title: String?) -> Self {
        return set { ( configurable: Base ) in
            configurable.addButton(withTitle: title)
        }
    }

}
