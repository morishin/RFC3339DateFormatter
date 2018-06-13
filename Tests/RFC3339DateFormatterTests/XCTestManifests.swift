import XCTest

extension RFC3339DateFormatterTest {
    static let __allTests = [
        ("testDateFromRFC3339DateString", testDateFromRFC3339DateString),
        ("testRFC3339DateStringFromDate", testRFC3339DateStringFromDate),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RFC3339DateFormatterTest.__allTests),
    ]
}
#endif
