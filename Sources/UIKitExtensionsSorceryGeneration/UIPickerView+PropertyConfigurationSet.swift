// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

@available(iOS 2.0, *)
public extension ConfigurationSet where Base: UIPickerView {
    func dataSource(_ newValue: UIPickerViewDataSource?) -> Self {
        return set { (configurable: UIPickerView) in
            configurable.dataSource = newValue
        }
    }

    func delegate(_ newValue: UIPickerViewDelegate?) -> Self {
        return set { (configurable: UIPickerView) in
            configurable.delegate = newValue
        }
    }

    func showsSelectionIndicator(_ newValue: Bool) -> Self {
        return set { (configurable: UIPickerView) in
            configurable.showsSelectionIndicator = newValue
        }
    }

}
