// swift-tools-version:4.2

import PackageDescription

let package = Package(
  name: "ecodatum-common",
  products: [
    .library(
      name: "ecodatum-common",
      targets: ["ecodatum-common"]),
    ],
  dependencies: [
    .package(url: "https://github.com/koher/EasyImagy.git", from: "0.5.0"),
    .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", from: "1.6.0")
    ],
  targets: [
    .target(
      name: "ecodatum-common",
      dependencies: [
        "EasyImagy",
        "SwiftyBeaver"
      ]),
    .testTarget(
      name: "ecodatum-commonTests",
      dependencies: ["ecodatum-common"]),
    ]
)
