
// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
// Copyright (C) 2026 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.

import PackageDescription

print("Using Connect debug version, if you need release version use https://github.com/go-acoustic/Connect-SP")
let package = Package(
    name: "Connect",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "Connect",
            targets: ["Connect", "Tealeaf", "EOCore"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Connect",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.17/Connect_XCFramework_Debug.zip",
            checksum: "8a235d8509ac75f47844e4c78de114d4090d3583da8d4144708dcfc0e0d66ca8"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.17/Tealeaf_XCFramework_Debug.zip",
            checksum: "9ecd0636c9e9bd16c505e134b917a5866ae7d216265ab150bfd650ac4e1fb8e6"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.17/EOCore_XCFramework_Debug.zip",
            checksum: "4dc3d8b17df559d8cc69f8162494cf869bbd2068ec9bb8f14f59d2cede5a5dff"),
    ]
)
