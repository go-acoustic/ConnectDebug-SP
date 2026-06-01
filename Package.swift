
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.12/Connect_XCFramework_Debug.zip",
            checksum: "30579de83c8f876f3a1060ac57877968bf8fdc3baa74b7a55986d10efa83bdb1"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.12/Tealeaf_XCFramework_Debug.zip",
            checksum: "d04a37cb9f6bde72fe038eb394c646563d7df1f528db0254e46840944d03542c"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.12/EOCore_XCFramework_Debug.zip",
            checksum: "b626a80589efe57318d20dad4dcfa0e1e8eb8ff69bfac30d8c2a87435d96aaa2"),
    ]
)
