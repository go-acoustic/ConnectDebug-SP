
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.7/Connect_XCFramework_Debug.zip",
            checksum: "dddc233dd996796b7a2433b578e16487bcaf6b019b18f9692cb2ffc1c5f9968a"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.7/Tealeaf_XCFramework_Debug.zip",
            checksum: "8a2b0298ca54e163960e7d5c9e9bcc2888f37c1246abdf51455ec409a5bb3811"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.7/EOCore_XCFramework_Debug.zip",
            checksum: "755e1eb2496d19c8930b52ca09f9fb5212b740287f0dc33526b743532fdaeefc"),
    ]
)
