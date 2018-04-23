// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

@available(iOS 5.0, *)
public extension ConfigurationSet where Base: UIPopoverBackgroundView {
    func arrowOffset(_ newValue: CGFloat) -> Self {
        return set { (configurable: UIPopoverBackgroundView) in
            configurable.arrowOffset = newValue
        }
    }

    func arrowDirection(_ newValue: UIPopoverArrowDirection) -> Self {
        return set { (configurable: UIPopoverBackgroundView) in
            configurable.arrowDirection = newValue
        }
    }
}
