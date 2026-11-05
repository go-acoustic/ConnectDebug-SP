
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.31/Connect_XCFramework_Debug.zip",
            checksum: "3a7d5e0d69a4c4e11efc425e87f41fb1c62f6a174762387f741131ffc4b31b86"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.31/Tealeaf_XCFramework_Debug.zip",
            checksum: "ecd80985248dcfe1b69e8ad00132ce13b3a053350d02bf1c2ab578db21862d0f"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.31/EOCore_XCFramework_Debug.zip",
            checksum: "ff6425a31fb2cdb9ee28bf815f3179f8e7b2d40b4b98f3e4042d6ae54f3bef60"),
    ]
)
