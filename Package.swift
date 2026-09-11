
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.25/Connect_XCFramework_Debug.zip",
            checksum: "2605ee9e75056dddd3f1589a98f39f1e37c23c464ceb0da8bd39b988201b994d"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.25/Tealeaf_XCFramework_Debug.zip",
            checksum: "e73ca55f024aeac5122a8feb2286f2e2a9ae8823383cc7c3f1741e9b1446a308"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.25/EOCore_XCFramework_Debug.zip",
            checksum: "91eea666361d9e2d1126766fc7bc41d8aa1979a3510adbcb91148f342fe0fdb4"),
    ]
)
