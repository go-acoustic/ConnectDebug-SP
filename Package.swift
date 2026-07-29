
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.18/Connect_XCFramework_Debug.zip",
            checksum: "c2d800e59ce60c46cdd2d65511a6e9ca3ae6679c0afa95ff8a86acba5a355414"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.18/Tealeaf_XCFramework_Debug.zip",
            checksum: "57f5299664f0dd9a63cf751cd9b3154159c79d6d372d5c59a8642971b4c3adc4"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.18/EOCore_XCFramework_Debug.zip",
            checksum: "9c04261c6a04f6dd3947db5103ae3166c723a76802e0bd1839aec0c2ac5c2416"),
    ]
)
