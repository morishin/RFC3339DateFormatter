import Foundation

// cf. RFC3339 Date/Time Format https://tools.ietf.org/html/rfc3339#page-8

public struct RFC3339DateFormatter {
    private static func makeFormatter(dateFormat: String = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ", timeZone: TimeZone? = nil) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = dateFormat
        if let timeZone = timeZone {
            formatter.timeZone = timeZone
        } else if let timeZone = TimeZone(abbreviation: "UTC") {
            formatter.timeZone = timeZone
        } else {
            assertionFailure()
            formatter.timeZone = .autoupdatingCurrent
        }
        return formatter
    }

    private static let formatters: [DateFormatter] = {
        let formats = [
            "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ",
            "yyyy-MM-dd'T'HH:mm:ssZZZZZ",
            "yyyy-MM-dd HH:mm:ss.SSSZZZZZ",
            "yyyy-MM-dd HH:mm:ssZZZZZ",
            ]
        return formats.map { makeFormatter(dateFormat: $0) }
    }()

    public static func date(from string: String) -> Date? {
        return formatters.lazy.flatMap { $0.date(from: string) }.first
    }

    public static func string(from date: Date, timeZone: TimeZone? = nil) -> String? {
        return makeFormatter(timeZone: timeZone).string(from: date)
    }
}
