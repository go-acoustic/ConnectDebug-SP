
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.13/Connect_XCFramework_Debug.zip",
            checksum: "6ec76a03257a9415fd6574957d951eef23e6a2d142def8791fe3a38a8e9f8d38"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.13/Tealeaf_XCFramework_Debug.zip",
            checksum: "f149814f10ec55f48b45d41c6db5314b1d80f54b99f73809ce0f7fe6857bf2ef"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.13/EOCore_XCFramework_Debug.zip",
            checksum: "04c1e685ba12401a9a0c5afd6405cb401306e679c4ee5e782467a2ea47dd1ec6"),
    ]
)
