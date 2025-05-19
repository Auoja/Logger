//
//  DestinationStore.swift
//  Logger
//

import Foundation

package actor DestinationStore {

    private var destinations: [LogDestination] = []

    func addDestination(_ destination: LogDestination) {
        destinations.append(destination)
    }

    func logMessage(_ message: LogMessage) {
        for destination in destinations {
            destination.log(message)
        }
    }
}
