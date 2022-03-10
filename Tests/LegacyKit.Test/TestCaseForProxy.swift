//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import XCTest
@testable import LegacyKit

internal final class TestCaseForProxy: XCTestCase {

    // MARK: Type: TestCaseForProxy

    // This scope is intentionally left blank.
}

extension MainTestCase {

    // MARK: Type: MainTestCase, Topic: Testing

    internal func testMutableProxy() throws {
        let stringOne = NSString("one")
        let stringTwo = NSString("two")
        // Create a proxy with some static object.
        let proxyString = MutableProxy(stringOne)
        // Ensure that the object is stored by reference without copying.
        XCTAssertEqual(ObjectIdentifier(proxyString.staticObject), ObjectIdentifier(stringOne))
        let string = proxyString.asDynamicObject()
        // Ensure that the dynamic object of the proxy is the same object as the proxy itself.
        XCTAssertEqual(ObjectIdentifier(string), ObjectIdentifier(proxyString))
        // Ensure that the dynamic object of the proxy is identical to the current static object of the proxy.
        XCTAssertEqual(string.substring(from: 0), stringOne.substring(from: 0))
        // Change the static object of the proxy.
        proxyString.staticObject = stringTwo
        // Ensure that the dynamic object of the proxy is now identical to the new static object of the proxy.
        XCTAssertEqual(string.substring(from: 0), stringTwo.substring(from: 0))
    }
}
