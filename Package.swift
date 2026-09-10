
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.24/Connect_XCFramework_Debug.zip",
            checksum: "f8933cd4eb38745a5ec47d32e4568e221afafde0944a14180472eaf4ea293acc"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.24/Tealeaf_XCFramework_Debug.zip",
            checksum: "56df96fc811b8dcbf79316d1172106669458dd94c24ef5b0f9eacd4f5dcf7bf7"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.24/EOCore_XCFramework_Debug.zip",
            checksum: "30a54ae1dc05641fd659caeabd859d7ecfdb378719a4046e3587b1ee46df0f07"),
    ]
)
