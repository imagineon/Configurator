// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable line_length identifier_name

import UIKit

@available(iOS 5.0, *)
extension Configurable where Self: UIStepper {
    @discardableResult public func apply(_ configuration: ConfigurationSet<UIStepper>) -> Self {
        _ = configuration.apply(on: self as UIStepper)
        return self
    }
}
