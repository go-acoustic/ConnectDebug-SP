
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.38/Connect_XCFramework_Debug.zip",
            checksum: "00b719bcc2301b1b757ab87a2149e51e3538b7046561c3f655ca4493c2ed6d37"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.38/Tealeaf_XCFramework_Debug.zip",
            checksum: "d838eb653f4f84ba22ae0a2c6a26f5b87c496b98d66301919ae95c0550fe5667"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.38/EOCore_XCFramework_Debug.zip",
            checksum: "dcd1607f7b9cc5a0cb9c5a2045ac4f860e4fab090b69b171422379aaf4a53147"),
    ]
)
