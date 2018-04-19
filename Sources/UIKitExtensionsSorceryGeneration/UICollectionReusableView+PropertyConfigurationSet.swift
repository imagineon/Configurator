// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit
public extension ConfigurationSet where Base: UICollectionReusableView {

}

extension Configurable where Self: UICollectionReusableView {
    @discardableResult public func apply(_ configuration: ConfigurationSet<UICollectionReusableView>) -> Self {
        _ = configuration.apply(on: self as UICollectionReusableView)
        return self
    }
}
