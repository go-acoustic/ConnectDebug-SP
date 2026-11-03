
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.27/Connect_XCFramework_Debug.zip",
            checksum: "4dad04d5f42507f990a27dce843fb93f9fe9561c0e241a2a09bf9d4586aed8a4"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.27/Tealeaf_XCFramework_Debug.zip",
            checksum: "711638f1764282ae230af7244c5261be8684d074fda3c6fe4ada17a3dc83bf46"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.27/EOCore_XCFramework_Debug.zip",
            checksum: "81e11b2a4e223a5598d545728ca4a11e76e33b9ee1fbba9d7456403c8e9d72d4"),
    ]
)
