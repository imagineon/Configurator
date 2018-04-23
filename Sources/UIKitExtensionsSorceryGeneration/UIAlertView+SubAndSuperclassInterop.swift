// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length identifier_name

import UIKit

extension Configurable where Self: UIAlertView {
    @discardableResult public func apply(_ configuration: ConfigurationSet<UIAlertView>) -> Self {
        _ = configuration.apply(on: self as UIAlertView)
        return self
    }
}
