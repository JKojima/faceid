// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Faceid",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "Faceid",
            targets: ["FaceIDPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "FaceIDPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/FaceIDPlugin"),
        .testTarget(
            name: "FaceIDPluginTests",
            dependencies: ["FaceIDPlugin"],
            path: "ios/Tests/FaceIDPluginTests")
    ]
)