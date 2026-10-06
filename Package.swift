
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.2/Connect_XCFramework_Debug.zip",
            checksum: "109aaaf92e92be7f9dde0c8ff6eecf0bdd5c1579cc83432a236b2e9151992c9a"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.2/Tealeaf_XCFramework_Debug.zip",
            checksum: "e2e619ed53e2cc17d8c4cb553b09157b8d5ab1c0c3f5339d6740cdaa8070f79c"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.2/EOCore_XCFramework_Debug.zip",
            checksum: "0082a900a0f17248f7a74a0cc81d4c7d13c4ca2930fe4f9d83d8de068842093d"),
    ]
)
