
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.21/Connect_XCFramework_Debug.zip",
            checksum: "3d1698326e4b615c7e5ed1ff68171d8e16bdb813214f6b020b991a6c78f42733"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.21/Tealeaf_XCFramework_Debug.zip",
            checksum: "1f537a1e66926e5a10f7487f927b9c52e9d54777b101c8ecf091f179d97e69c0"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.21/EOCore_XCFramework_Debug.zip",
            checksum: "782b9fff8c90431d9f60f4ba099e93e6bb7cc8f284b8c8c9bb476017eef0b4ff"),
    ]
)
