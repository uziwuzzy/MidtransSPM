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
//        .binaryTarget(
//            name: "MidtransCoreKit",
//            path: "XCFramework/MidtransCoreKit.xcframework"
//        ),
        .binaryTarget(name: "MidtransCoreKit", url: "https://github.com/uziwuzzy/Midtrans-xcf/releases/download/1.22.0/MidtransCoreKit-1.22.0.zip", checksum: "f2bebf1d8ef9ec9450715ddfe71534a4ecb7008e0c2b8a2362cef6832a01636c"),
        .binaryTarget(name: "MidtransKit", url: "https://github.com/uziwuzzy/Midtrans-xcf/releases/download/1.22.0/MidtransKit-1.22.0.zip", checksum: "ad04d963dd718b69c1b57e5b00fb85e4bb6f21bb437395fcef02f04af6d747ed")
//        .binaryTarget(
//            name: "MidtransKit",
//            path: "XCFramework/MidtransKit.xcframework"
//        )
    ]
)
