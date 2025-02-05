// swift-tools-version:5.7.1

import PackageDescription

let package = Package(
  name: "swiftui-navigation",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "SwiftUINavigation",
      targets: ["SwiftUINavigation"]
    ),
    .library(
      name: "SwiftUINavigationCore",
      targets: ["SwiftUINavigationCore"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    .package(url: "https://github.com/vedantgurav/swift-case-paths", branch: "use"),
    .package(url: "https://github.com/pointfreeco/swift-custom-dump", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "SwiftUINavigation",
      dependencies: [
        "SwiftUINavigationCore",
        .product(name: "CasePaths", package: "swift-case-paths"),
      ]
    ),
    .target(
      name: "SwiftUINavigationCore",
      dependencies: [
        .product(name: "CustomDump", package: "swift-custom-dump")
      ]
    ),
  ]
)
