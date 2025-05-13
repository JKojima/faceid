// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DotbitFaceid",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "DotbitFaceid",
            targets: ["FaceidPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "FaceidPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FaceidPlugin"),
        .testTarget(
            name: "FaceidPluginTests",
            dependencies: ["FaceidPlugin"],
            path: "ios/Tests/FaceidPluginTests")
    ]
)