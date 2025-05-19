//
//  Logger.swift
//  Logger
//

import Foundation

public enum Logger {

    private static let store = DestinationStore()

    // MARK: Public

    public static func addDestination(_ destination: LogDestination) {
        Task { await store.addDestination(destination) }
    }

    public static func log(level: LogLevel,
                           message: String,
                           error: Error?,
                           tag: String?) {
        let tag: String = {
            if let tag, !tag.isEmpty {
                return tag
            } else {
                return "Other"
            }
        }()

        let log = LogMessage(level: level,
                             message: message,
                             error: error,
                             tag: tag)

        Task { await store.logMessage(log) }
    }
}

// MARK: Convenience

public extension Logger {

    static func debug(_ message: String, tag: String? = nil) {
        log(level: .debug, message: message, error: nil, tag: tag)
    }

    static func info(_ message: String, tag: String? = nil) {
        log(level: .info, message: message, error: nil, tag: tag)
    }

    static func warning(_ message: String, tag: String? = nil) {
        log(level: .warning, message: message, error: nil, tag: tag)
    }

    static func error(_ message: String, tag: String? = nil) {
        log(level: .error, message: message, error: nil, tag: tag)
    }

    static func error(_ error: Error, tag: String? = nil) {
        log(level: .error, message: String(describing: error), error: error, tag: tag)
    }
}
