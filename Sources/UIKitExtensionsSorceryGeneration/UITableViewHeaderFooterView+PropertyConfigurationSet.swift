// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

@available(iOS 6.0, *)
public extension ConfigurationSet where Base: UITableViewHeaderFooterView {

    func backgroundView(_ newValue: UIView?) -> Self {
        return set { (configurable: UITableViewHeaderFooterView) in
            configurable.backgroundView = newValue
        }
    }

}
