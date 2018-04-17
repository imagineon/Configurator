// Generated using Sourcery 0.10.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import UIKit
public extension ConfigurationSet where Base: UIScrollView {
    func contentOffset(_ newValue: CGPoint) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.contentOffset = newValue
        }
    }

    func contentSize(_ newValue: CGSize) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.contentSize = newValue
        }
    }

    func contentInset(_ newValue: UIEdgeInsets) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.contentInset = newValue
        }
    }

    @available(iOS 11.0, *)
    func contentInsetAdjustmentBehavior(_ newValue: UIScrollViewContentInsetAdjustmentBehavior) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.contentInsetAdjustmentBehavior = newValue
        }
    }

    func delegate(_ newValue: UIScrollViewDelegate?) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.delegate = newValue
        }
    }

    func isDirectionalLockEnabled(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.isDirectionalLockEnabled = newValue
        }
    }

    func bounces(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.bounces = newValue
        }
    }

    func alwaysBounceVertical(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.alwaysBounceVertical = newValue
        }
    }

    func alwaysBounceHorizontal(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.alwaysBounceHorizontal = newValue
        }
    }

    func isPagingEnabled(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.isPagingEnabled = newValue
        }
    }

    func isScrollEnabled(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.isScrollEnabled = newValue
        }
    }

    func showsHorizontalScrollIndicator(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.showsHorizontalScrollIndicator = newValue
        }
    }

    func showsVerticalScrollIndicator(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.showsVerticalScrollIndicator = newValue
        }
    }

    func scrollIndicatorInsets(_ newValue: UIEdgeInsets) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.scrollIndicatorInsets = newValue
        }
    }

    func indicatorStyle(_ newValue: UIScrollViewIndicatorStyle) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.indicatorStyle = newValue
        }
    }

    @available(iOS 3.0, *)
    func decelerationRate(_ newValue: CGFloat) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.decelerationRate = newValue
        }
    }

    func indexDisplayMode(_ newValue: UIScrollViewIndexDisplayMode) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.indexDisplayMode = newValue
        }
    }

    func delaysContentTouches(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.delaysContentTouches = newValue
        }
    }

    func canCancelContentTouches(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.canCancelContentTouches = newValue
        }
    }

    func minimumZoomScale(_ newValue: CGFloat) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.minimumZoomScale = newValue
        }
    }

    func maximumZoomScale(_ newValue: CGFloat) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.maximumZoomScale = newValue
        }
    }

    @available(iOS 3.0, *)
    func zoomScale(_ newValue: CGFloat) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.zoomScale = newValue
        }
    }

    func bouncesZoom(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.bouncesZoom = newValue
        }
    }

    func scrollsToTop(_ newValue: Bool) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.scrollsToTop = newValue
        }
    }

    @available(iOS 7.0, *)
    func keyboardDismissMode(_ newValue: UIScrollViewKeyboardDismissMode) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.keyboardDismissMode = newValue
        }
    }

    @available(iOS 10.0, *)
    func refreshControl(_ newValue: UIRefreshControl?) -> Self {
        return set { (configurable: UIScrollView) in
            configurable.refreshControl = newValue
        }
    }

}
