
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.35/Connect_XCFramework_Debug.zip",
            checksum: "08e68c093d6893b5f330411b3fcbe6206b67a9a90a44c029f96d69ee945f46fe"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.35/Tealeaf_XCFramework_Debug.zip",
            checksum: "568785041d1099abe91e75a51d81acabc9f09477c63a812fa8215a7fc718d27b"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.35/EOCore_XCFramework_Debug.zip",
            checksum: "c8b75ea0556b293d47c3ecc1841b1ed9e5267c217381f560cbd8e14c7f4e8202"),
    ]
)
