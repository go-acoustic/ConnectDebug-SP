
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.29/Connect_XCFramework_Debug.zip",
            checksum: "2f5a771d26636e9b33af2026541b82bb03f36aa8d8328a78733bd8c9bb5410db"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.29/Tealeaf_XCFramework_Debug.zip",
            checksum: "6248ac5f8616bd12f38c4e20935fdd7dbb34f9e7f341d1a97320dbe51fbce9cb"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.29/EOCore_XCFramework_Debug.zip",
            checksum: "75599b7867e67c806d2ebc5b86deffb4833dca64f2c306db460039ed2df8d98c"),
    ]
)
