import Foundation
import RFC3339DateFormatter

// Date from String

// with T, nanosecond
RFC3339DateFormatter.date(from: "2017-01-01T00:00:00.000Z")
RFC3339DateFormatter.date(from: "2017-01-01T09:00:00.000+09:00")
// with T
RFC3339DateFormatter.date(from: "2017-01-01T00:00:00Z")
RFC3339DateFormatter.date(from: "2017-01-01T09:00:00+09:00")
// with ` `, nanosecond
RFC3339DateFormatter.date(from: "2017-01-01 00:00:00.000Z")
RFC3339DateFormatter.date(from: "2017-01-01 09:00:00.000+09:00")
// with ` `
RFC3339DateFormatter.date(from: "2017-01-01 00:00:00Z")
RFC3339DateFormatter.date(from: "2017-01-01 09:00:00+09:00")
// different number of digits of nanosecond
RFC3339DateFormatter.date(from: "2017-01-01 00:00:00.0Z")

// Date to String
RFC3339DateFormatter.string(from: Date())
