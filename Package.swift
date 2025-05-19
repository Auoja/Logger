// swift-tools-version: 6.0

import PackageDescription

let package = Package(name: "Logger",
                      platforms: [
                        .iOS(.v13),
                        .macOS(.v10_15),
                        .watchOS(.v6),
                        .tvOS(.v13),
                      ],
                      products: [
                        .library(name: "Logger", targets: ["Logger"]),
                      ],
                      targets: [
                        .target(name: "Logger"),
                      ])
