// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

public extension ConfigurationSet where Base: UIAlertView {

    func addButton(withTitle title: String?) -> Self {
        return set { ( configurable: Base ) in
            configurable.addButton(withTitle: title)
        }
    }

}
