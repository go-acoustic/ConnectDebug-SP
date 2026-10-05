
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.51/Connect_XCFramework_Debug.zip",
            checksum: "839bad6a323e641e9539896eb9b5363f49edafa5ed6ea45672b338040ef5088e"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.51/Tealeaf_XCFramework_Debug.zip",
            checksum: "44f0b8505ed7db8dae0517feb0c58ee6f7a4c1a84b9bc4c1fb75a012066e8f17"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.51/EOCore_XCFramework_Debug.zip",
            checksum: "2e44c2f429470eb1ec7f7ff8bfa591b54cd50c9d7884d5581c6ba2f64d55fd80"),
    ]
)
