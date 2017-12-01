import XCTest
@testable import RFC3339DateFormatter

// cf. RFC3339 Date/Time Format https://tools.ietf.org/html/rfc3339#page-8

class RFC3339DateFormatterTest: XCTestCase {
    private let sampleDate: Date = {
        let calendar = Calendar(identifier: .gregorian)
        // 2017-01-01 00:00:00 UTC
        guard let date = calendar.date(from: DateComponents(timeZone: TimeZone(abbreviation: "UTC"), year: 2017, month: 1, day: 1, hour: 0, minute: 0, second: 0, nanosecond: 0)) else { fatalError() }
        return date
    }()

    func testDateFromRFC3339DateString() {
        // with T, nanosecond
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01T00:00:00.000Z"), sampleDate)
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01T09:00:00.000+09:00"), sampleDate)
        // with T
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01T00:00:00Z"), sampleDate)
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01T09:00:00+09:00"), sampleDate)
        // with ` `, nanosecond
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01 00:00:00.000Z"), sampleDate)
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01 09:00:00.000+09:00"), sampleDate)
        // with ` `
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01 00:00:00Z"), sampleDate)
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01 09:00:00+09:00"), sampleDate)
        // different number of digits of nanosecond
        XCTAssertEqual(RFC3339DateFormatter.date(from: "2017-01-01 00:00:00.0Z"), sampleDate)
    }

    func testRFC3339DateStringFromDate() {
        XCTAssertEqual(RFC3339DateFormatter.string(from: sampleDate), "2017-01-01T00:00:00.000Z")
    }
}
