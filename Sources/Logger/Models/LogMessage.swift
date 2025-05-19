//
//  LogMessage.swift
//  Logger
//

import Foundation

public struct LogMessage: Sendable {
    public let level: LogLevel
    public let message: String
    public let error: Error?
    public let tag: String

    public init(level: LogLevel,
                message: String,
                error: Error?,
                tag: String) {
        self.level = level
        self.message = message
        self.error = error
        self.tag = tag
    }
}
