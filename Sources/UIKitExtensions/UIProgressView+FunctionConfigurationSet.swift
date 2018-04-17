//
//  UIProgressViewFucntions.swift
//  ViewConfigurator-iOS
//
//  Created by Andrii Pazynych on 27.03.18.
//  Copyright © 2018 ImagineOn GmbH. All rights reserved.
//

import UIKit
public extension ConfigurationSet where Base: UIProgressView {

    @available(iOS 5.0, *)
    func progress(_ progress: Float, animated: Bool) -> Self {
        return set { ( configurable: Base ) in
            configurable.setProgress(progress, animated: animated)
        }
    }
}
