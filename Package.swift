// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Midtrans",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MidtransCorekit",
            targets: ["MidtransCorekit"]),
        .library(
            name: "Midtranskit",
            targets: ["Midtranskit", "MidtransCorekit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        //        .binaryTarget(
        //            name: "MidtransCorekit",
        //            path: "XCFramework/MidtransCoreKit.xcframework"
        //        ),
        //        .binaryTarget(
        //            name: "Midtranskit",
        //            path: "XCFramework/MidtransKit.xcframework"
        //        )
        .binaryTarget(
            name: "MidtransCorekit",
            url: "https://github.com/uziwuzzy/Midtrans-xcf/releases/download/1.22.0/MidtransCoreKit.xcframework-1.22.0.zip",
            checksum: "055e0ed6f2fe165e893f5c74015d02a1d43e57e1d3c1a29f6f2d02aa534375cc"),
        .binaryTarget(
            name: "Midtranskit",
            url: "https://github.com/uziwuzzy/Midtrans-xcf/releases/download/1.22.0/MidtransKit.xcframework-1.22.0.zip",
            checksum: "4ea2510f26e45f6d3217029c7b64266d806c21336fca8a49cec3330af98b53a7")
    ]
    
)
