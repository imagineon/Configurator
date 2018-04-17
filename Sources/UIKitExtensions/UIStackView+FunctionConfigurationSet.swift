//
//  UIStackViewFunctions.swift
//  ViewConfigurator-iOS
//
//  Created by Andrii Pazynych on 27.03.18.
//  Copyright © 2018 ImagineOn GmbH. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public extension ConfigurationSet where Base: UIStackView {

    @available(iOS 11.0, *)
    func customSpacing(_ spacing: CGFloat, after arrangedSubview: UIView) -> Self {
        return set { ( configurable: Base ) in
            configurable.setCustomSpacing(spacing, after: arrangedSubview)
        }
    }

}
