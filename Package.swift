
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.37/Connect_XCFramework_Debug.zip",
            checksum: "5ba86d6e03ae0b4139559bc8e979eedc83d5995f8550d633b7a12a2a5969bf76"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.37/Tealeaf_XCFramework_Debug.zip",
            checksum: "8b0a109424e2d12dca01db393e4315b1544b3a94a90db3e79083bbe4daed8dd7"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.37/EOCore_XCFramework_Debug.zip",
            checksum: "77e1aeef1035b0234563bdd3aee32cafbbd5e0b97f8c7bbb7b5152a062f48f96"),
    ]
)
