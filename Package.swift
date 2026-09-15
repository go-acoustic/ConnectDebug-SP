
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.27/Connect_XCFramework_Debug.zip",
            checksum: "03bb89690b26e42b6f156b3615a24b2627fbeaddfed7d6c89dc2cdb649c08da0"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.27/Tealeaf_XCFramework_Debug.zip",
            checksum: "1695817f1221bfd0efa7ac90491ce5a282ff6547eb8864097c9664f76ef246d9"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.27/EOCore_XCFramework_Debug.zip",
            checksum: "7a9376bce86543f924d7f5ef1c2864c7eb8b928a12e6ad081ba3e1abd1df8df3"),
    ]
)
