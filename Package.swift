// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HTTPKit",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "HTTPKit", targets: ["HTTPKit"]),
        .library(name: "RxHTTPKit", targets: ["RxHTTPKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "HTTPKit",
            dependencies: ["Alamofire"],
            path: "HTTPKit"
        ),
        .target(
            name: "RxHTTPKit",
            dependencies: ["HTTPKit", "RxSwift"],
            path: "RxHTTPKit"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
