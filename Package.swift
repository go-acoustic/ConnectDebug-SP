
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.15/Connect_XCFramework_Debug.zip",
            checksum: "63d79f50d01a8d3e7744e4d3d2bcf248069f27ab96423db7ccca89f1c0011331"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.15/Tealeaf_XCFramework_Debug.zip",
            checksum: "722eddb5a24ed87af1c8423a01f1df28294120eb03af9a24d8e60b80a1b540c3"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.15/EOCore_XCFramework_Debug.zip",
            checksum: "9fae853a83f485d35f753eeb53983bf17e570ccb5dee7e542f0db78c0eb6f26a"),
    ]
)
