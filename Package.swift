
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.24/Connect_XCFramework_Debug.zip",
            checksum: "780886905952a9279e359fe13d25e03d0f646e57c7a8a1e63b65b3522c4c5d5f"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.24/Tealeaf_XCFramework_Debug.zip",
            checksum: "837c54bc84e25c3e386e48c29d1bdc3a33247a3ff7384177b15ff6acc800a1bd"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.24/EOCore_XCFramework_Debug.zip",
            checksum: "36d3d830e585e074032e0ef341a9c25da80c9a8e17fa505cc723160bcc9bcb66"),
    ]
)
