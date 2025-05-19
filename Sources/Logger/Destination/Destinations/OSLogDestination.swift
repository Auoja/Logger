//
//  OSLogDestination.swift
//  Logger
//

#if canImport(OSLog)
import OSLog

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
public struct OSLogDestination: LogDestination {

    private let subsystem: String

    public init(subsystem: String) {
        self.subsystem = subsystem
    }

    public func log(_ message: LogMessage) {
        let logger = os.Logger(subsystem: subsystem, category: message.tag)

        switch message.level {
        case .debug:
            logger.debug("\(message.message)")
        case .info:
            logger.info("\(message.message)")
        case .warning:
            logger.warning("\(message.message)")
        case .error:
            logger.critical("\(message.message)")
        }
    }
}
#endif
