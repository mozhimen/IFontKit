// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IFontKit.Russoone_Regular",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "IFontKit.Russoone_Regular",
            targets: ["IFontKit.Russoone_Regular"]),
    ],
    dependencies: [
        .package(name: "IFontKit.Basic", path: "../../IFontKit")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "IFontKit.Russoone_Regular",
            dependencies: ["IFontKit.Basic"],
            resources: [.process("Res")]
        )

    ]
)
