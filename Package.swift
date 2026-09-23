
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.35/Connect_XCFramework_Debug.zip",
            checksum: "0055a8149a83a45bc7e97e473901b2059af1451390337b327caf33579e0da1d8"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.35/Tealeaf_XCFramework_Debug.zip",
            checksum: "b47112ef1ee28275a9e368fd42e652839119363344ec228e5d52abbb9626d5ad"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.35/EOCore_XCFramework_Debug.zip",
            checksum: "335b3a6bb43d5f5d4e8056d82b2c88a402e926fa31b2fe2fa1dfb86b3a55c8e0"),
    ]
)
