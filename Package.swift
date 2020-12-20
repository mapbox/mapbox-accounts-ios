// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "2.3.1"
let checksum = "2057e58ed24eb2f8ca7ebccebd848093d8df1a56c95473a424942e12d73bc8bd"

let package = Package(
    name: "MapboxAccounts",
    platforms: [.iOS(.v9)],
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
        .binaryTarget(name: "MapboxAccounts", url: "https://www.mapbox.com/ios-sdk/MapboxAccounts-\(version).xcframework.zip", checksum: checksum),
    ]
)
