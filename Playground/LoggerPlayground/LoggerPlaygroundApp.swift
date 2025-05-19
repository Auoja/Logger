//
//  LoggerPlaygroundApp.swift
//  LoggerPlayground
//

import SwiftUI
import Logger

@main
struct LoggerPlaygroundApp: App {

    init() {
        Logger.addDestination(ConsoleLogDestination())
        Logger.addDestination(OSLogDestination(subsystem: "logger-playground-app"))
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
