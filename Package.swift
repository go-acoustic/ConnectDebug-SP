
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.32/Connect_XCFramework_Debug.zip",
            checksum: "311b2fcca006c32a2882f40c42c542bd90779d9a745d62559f93cdb9ed6d273c"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.32/Tealeaf_XCFramework_Debug.zip",
            checksum: "ab56d033e93edafe5c87d4c7710d37ab97c7bf450bba0b280f44c76e2fdcb337"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.32/EOCore_XCFramework_Debug.zip",
            checksum: "d5e0f8cac443cbc3461f80143aefb71a63f4d7fbe5849879d643db4c13c723c6"),
    ]
)
