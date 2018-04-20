// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length identifier_name

import UIKit

@available(iOS 2.0, *)
extension Configurable where Self: UIButton {
    @discardableResult public func apply(_ configuration: ConfigurationSet<UIButton>) -> Self {
        _ = configuration.apply(on: self as UIButton)
        return self
    }
}
