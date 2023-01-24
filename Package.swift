// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XLPagerTabStrip",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "XLPagerTabStrip",
            targets: ["XLPagerTabStrip"])
    ],
    targets: [
        .target(
            name: "XLPagerTabStrip",
            dependencies: ["FXPageControl"],
            path: "Sources",
            exclude: ["FXPageControl.m"],
            resources: [
                .process("ButtonCell.xib")
            ]),
        .target(
            name: "FXPageControl",
            path: "Sources",
            sources: ["FXPageControl.m"],
            publicHeadersPath: "."),
        .testTarget(
            name: "XLPagerTabStripTests",
            dependencies: ["XLPagerTabStrip"],
            path: "Tests")
    ]
)
