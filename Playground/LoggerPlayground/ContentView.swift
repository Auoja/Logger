//
//  ContentView.swift
//  LoggerPlayground
//

import SwiftUI
import Logger

struct ContentView: View {

    @State var message = ""
    @State var tag = ""
    @State var level: LogLevel = .info

    var body: some View {
        Form {
            TextField("Message", text: $message)

            TextField("Tag", text: $tag)

            Picker("Level", selection: $level) {
                ForEach(LogLevel.allCases) { level in
                    Text(level.title).tag(level)
                }
            }

            Section {
                Button("Log message") {
                    Logger.log(level: level,
                               message: message,
                               error: nil,
                               tag: tag)
                }
                .disabled(message.isEmpty)
            }
        }
    }
}

// MARK: LogLevel

private extension LogLevel {

    var title: String {
        "\(indicator) \(name)"
    }
}

#Preview {
    ContentView()
}
