// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

@available(iOS 6.0, *)
public extension ConfigurationSet where Base: UIRefreshControl {

    func tintColor(_ newValue: UIColor!) -> Self {
        return set { (configurable: UIRefreshControl) in
            configurable.tintColor = newValue
        }
    }

    func attributedTitle(_ newValue: NSAttributedString?) -> Self {
        return set { (configurable: UIRefreshControl) in
            configurable.attributedTitle = newValue
        }
    }
}
