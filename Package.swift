
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.5/Connect_XCFramework_Debug.zip",
            checksum: "1c964dad1c48ca02674a8c05c4058dae039fe24995f5a827038dca4811d72a8f"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.5/Tealeaf_XCFramework_Debug.zip",
            checksum: "ae189fe701ccf091a93a661ffec7cf9a1e6cfddddeb0cafb75525b6f75a060b3"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.5/EOCore_XCFramework_Debug.zip",
            checksum: "040bac4b37f1d1ea3e6aa3054eb25d4395bffc1472295f5d11db39e80f424546"),
    ]
)
