//
//  LogLevel.swift
//  Logger
//

import Foundation

public enum LogLevel: String, CaseIterable, Identifiable, Sendable {
    case debug
    case info
    case warning
    case error

    public var id: String { rawValue }
}

// MARK: Convenience

public extension LogLevel {

    var indicator: String {
        switch self {
        case .debug: "🐛"
        case .info: "ℹ️"
        case .warning: "⚠️"
        case .error: "❌"
        }
    }

    var name: String {
        switch self {
        case .debug: "Debug"
        case .info: "Information"
        case .warning: "Warning"
        case .error: "Error"
        }
    }
}
