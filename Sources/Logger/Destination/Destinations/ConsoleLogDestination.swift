//
//  ConsoleLogDestination.swift
//  Logger
//

import Foundation

public struct ConsoleLogDestination: LogDestination {

    private let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss"
        return dateFormatter
    }()

    public init() {}

    public func log(_ message: LogMessage) {
#if DEBUG
        let formattedDate = dateFormatter.string(from: Date())
        let log = "\(message.level.indicator) \(formattedDate) - [\(message.tag)] \(message.message)"

        print(log)

        if let error = message.error {
            print(error)
        }
#endif
    }
}
