//
//  LogDestination.swift
//  Logger
//

import Foundation

public protocol LogDestination: Sendable {
    func log(_ message: LogMessage)
}
