
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.50/Connect_XCFramework_Debug.zip",
            checksum: "4f969b251c06ac30b9013e6149df1e4d83ffd8f9bededa27eaad1e3f2d8d27ca"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.50/Tealeaf_XCFramework_Debug.zip",
            checksum: "2ba1682b4dcb4bf8ea4566576d375abfe824dac082f9f5d99e80d45e207b2050"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.50/EOCore_XCFramework_Debug.zip",
            checksum: "c422f23f84ad985287908799ee0a8ecc45a2bd16b07f7c21f35cc0c9c4e9eab0"),
    ]
)
