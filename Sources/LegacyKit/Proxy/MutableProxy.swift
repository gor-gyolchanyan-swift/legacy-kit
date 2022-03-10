public final class MutableProxy<Object>: Proxy<Object>
where Object: AnyObject {

    public init(_ staticObject: Object) {
        _staticObject = staticObject
    }

    private var _staticObject: Object

    // MARK: Proxy

    public override var staticObject: Object {

        get {
            return _staticObject
        }

        set(staticObject) {
            _staticObject = staticObject
        }
    }
}
