// swift-tools-version:5.0

import PackageDescription

let name = "PackageA"

let package = Package(
    name: name,
    platforms: [ .iOS(.v9) ],
    products: [
        .library(name: name, targets: [ name ])
    ],
    targets: [
        .target(name: name)
    ]
)