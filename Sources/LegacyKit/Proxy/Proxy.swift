//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import __LegacyKit

open class Proxy<Object>: __Proxy where
    Object: AnyObject {

    // MARK: Proxy

    open var staticObject: Object {
        fatalError("execution has reached a routine that was supposed to be overriden")
    }

    public final func asDynamicObject() -> Object {
        guard let dynamicObject = self as? Object else {
            preconditionFailure("execution has reached a routine that is not supposed to be reachable")
        }
        return dynamicObject
    }

    // MARK: __Proxy

    @available(*, unavailable)
    public final override var __staticObject: Any {
        staticObject
    }
}
