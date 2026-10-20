
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.8/Connect_XCFramework_Debug.zip",
            checksum: "3cfde8a1a120bbbca097fa3a04798a2d86ef9dbe813f040b65dd9f99ab4e5def"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.8/Tealeaf_XCFramework_Debug.zip",
            checksum: "8a268bd03f20fa8d18a2d54fed675ee58b375653e65c0a9b786cb99b19329a7c"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.8/EOCore_XCFramework_Debug.zip",
            checksum: "459bd398b2cad4aff6234c5c80e763bd492f169bb1e2d337d097930b559c6a44"),
    ]
)
