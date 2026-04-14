// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SCRecorder",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SCRecorder",
            targets: ["SCRecorder"]
        )
    ],
    targets: [
        .target(
            name: "SCRecorder",
            path: "Library/Sources",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("Metal")
            ]
        )
    ]
)
