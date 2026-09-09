
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.23/Connect_XCFramework_Debug.zip",
            checksum: "aed2eda2876fe57484f6d35edb5f7e6ec9c10bbe5448369b03e86d6430acc1bb"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.23/Tealeaf_XCFramework_Debug.zip",
            checksum: "92ddd5d23d72d9ebb953a6fd63f151493a8ac1911896babd53fe1c8a81e4d37e"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.23/EOCore_XCFramework_Debug.zip",
            checksum: "215d5b72eeca43416f45eb6bba9cc1f6f7aa8056f2494608a0fb115bb6624b90"),
    ]
)
