// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
// swiftlint:disable line_length identifier_name

import UIKit

@available(iOS 2.0, *)
public extension ConfigurationSet where Base: UISwitch {

    func on(_ on: Bool, animated: Bool) -> Self {
        return set { ( configurable: Base ) in
            configurable.setOn(on, animated: animated)
        }
    }

}
