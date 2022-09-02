// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Midtrans",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MidtransCoreKit",
            targets: ["MidtransCoreKit"]),
        .library(
            name: "MidtransKit",
            targets: ["MidtransKit", "MidtransCoreKit"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "MidtransCoreKit", url: "https://github.com/veritrans/Veritrans-ios-sdk/releases/download/1.23.0/MidtransCoreKit.xcframework-1.23.0.zip", checksum: "131f01b1c3292da27656dcfb176bc52c6f72eceb58cc7cdfbee52edaffb3924b"),
        .binaryTarget(name: "MidtransKit", url: "https://github.com/veritrans/Veritrans-ios-sdk/releases/download/1.23.0/MidtransKit.xcframework-1.23.0.zip", checksum: "1f4e9339da762a47b71ac8dcd6b719ca6076bb5ad529732772786e421ab0b8b3")
    ]
)
