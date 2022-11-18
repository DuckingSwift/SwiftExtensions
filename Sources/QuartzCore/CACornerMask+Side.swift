import UIKit

/// Sugar to get sides of the mask
public extension CACornerMask {
    static var all: CACornerMask {
        return [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    static var top: CACornerMask {
        return [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    static var bottom: CACornerMask {
        return [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
