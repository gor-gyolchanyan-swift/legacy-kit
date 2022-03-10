// swift-tools-version:5.5

//
// Introductory information can be found in the `README.md` file located at the root of the repository that contains this file.
// Licensing information can be found in the `LICENSE` file located at the root of the repository that contains this file.
//

import PackageDescription

let package = Package(
    name: "LegacyKit",
    products: [
        .library(
            name: "LegacyKit",
            targets: ["LegacyKit"]
        )
    ],
     targets: [
        .target(
            name: "__LegacyKit"
        ),
        .target(
            name: "LegacyKit",
            dependencies: [
                "__LegacyKit"
            ]
        ),
        .testTarget(
            name: "LegacyKit.Test",
            dependencies: [
                "LegacyKit"
            ]
        )
     ]
)
