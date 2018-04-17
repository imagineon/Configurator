//
//  UINavigationBarItems.swift
//  ViewConfigurator-iOS
//
//  Created by Andrii Pazynych on 27.03.18.
//  Copyright © 2018 ImagineOn GmbH. All rights reserved.
//

import UIKit
public extension ConfigurationSet where Base: UINavigationBar {

    @available(iOS 7.0, *)
    func backgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> Self {
        return set { ( configurable: Base ) in
            configurable.setBackgroundImage(backgroundImage, for: barPosition, barMetrics: barMetrics)
        }
    }

    @available(iOS 5.0, *)
    func backgroundImage(_ backgroundImage: UIImage?, for barMetrics: UIBarMetrics) -> Self {
        return set { ( configurable: Base ) in
            configurable.setBackgroundImage(backgroundImage, for: barMetrics)
        }
    }

    @available(iOS 5.0, *)
    func titleVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> Self {
        return set { ( configurable: Base ) in
            configurable.setTitleVerticalPositionAdjustment(adjustment, for: barMetrics)
        }
    }

}
