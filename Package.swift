// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.3.0"
let checksum = "43dcba1b273d07f97e3ef1aea79bfc0a7094a175bb7f73aa9b5eb53733caf75e"

let package = Package(
    name: "mapbox-accounts-ios",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MapboxAccounts",
            targets: ["MapboxAccounts"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "MapboxAccounts", url: "https://mapbox.com/ios-sdk/MapboxAccounts-\(version).zip", checksum: checksum),
    ],
    cxxLanguageStandard: .cxx14
)
