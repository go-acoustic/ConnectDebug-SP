
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.41/Connect_XCFramework_Debug.zip",
            checksum: "3da8e5a30e4ef1b12ed194c7fc4a7b61837abde8d6cb829ccea1a9654d02e580"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.41/Tealeaf_XCFramework_Debug.zip",
            checksum: "0d32fd0e708144b635e866896d2e3bb593fbd45ffbb25015c7a73b4b53866c25"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.41/EOCore_XCFramework_Debug.zip",
            checksum: "e80fd8f5c0d41048758e782f4ff46c9525821fe6bdfe4e437828a86f955dcd17"),
    ]
)
