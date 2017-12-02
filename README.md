# RFC3339DateFormatter

![Swift version](https://img.shields.io/badge/swift-4.0-orange.svg)
![CocoaPods compatible](https://cocoapod-badges.herokuapp.com/v/RFC3339DateFormatter/badge.png)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


DateFormatter conforming to [RFC3339](https://tools.ietf.org/html/rfc3339#page-8)

## Usage
[Demo.playground](https://github.com/morishin/RFC3339DateFormatter/blob/master/Demo.playground/Contents.swift)

### Date from String
```swift
import RFC3339DateFormatter

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
```

### Date to String
```swift
import RFC3339DateFormatter

RFC3339DateFormatter.string(from: Date()) // "2017-12-01T06:25:11.029Z"
```

## Installation
### Carthage
Cartfile

```
github "morishin/RFC3339DateFormatter"
```

### CocoaPods
Podfile

```ruby
pod 'RFC3339DateFormatter'
```

## LICENSE
MIT
