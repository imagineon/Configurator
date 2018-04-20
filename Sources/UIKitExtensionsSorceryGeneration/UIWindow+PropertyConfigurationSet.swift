// Generated using Sourcery 0.12.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit

@available(iOS 2.0, *)
public extension ConfigurationSet where Base: UIWindow {
    @available(iOS 3.2, *)
    func screen(_ newValue: UIScreen) -> Self {
        return set { (configurable: UIWindow) in
            configurable.screen = newValue
        }
    }

    func windowLevel(_ newValue: UIWindowLevel) -> Self {
        return set { (configurable: UIWindow) in
            configurable.windowLevel = newValue
        }
    }

    @available(iOS 4.0, *)
    func rootViewController(_ newValue: UIViewController?) -> Self {
        return set { (configurable: UIWindow) in
            configurable.rootViewController = newValue
        }
    }
}
