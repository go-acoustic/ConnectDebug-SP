
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.4/Connect_XCFramework_Debug.zip",
            checksum: "5738e541364b8492d77cf8d323b5cf5cbc3e6e37d99e05a0f422f081df48073d"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.4/Tealeaf_XCFramework_Debug.zip",
            checksum: "9fcd264bf9517a4e7f40992c7cc74dafc88d7d47057d457a4d4d5accf6cee1e4"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.4/EOCore_XCFramework_Debug.zip",
            checksum: "28dfb8f8bbbaad76665748b5b20e65ecea2cae8bc7ce235bae199dc18b49e30d"),
    ]
)
