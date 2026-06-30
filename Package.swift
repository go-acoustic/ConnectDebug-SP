
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.14/Connect_XCFramework_Debug.zip",
            checksum: "ec6e27b595c3c9cb31ecf85cc1fb0c7df1465ea273413c46c36a4b7553167757"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.14/Tealeaf_XCFramework_Debug.zip",
            checksum: "0163626fe61421cc00f95651e223dd8a9c0dd4f9296a6d231183b7550dcbf44a"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.14/EOCore_XCFramework_Debug.zip",
            checksum: "d98621bb2f76585a9617ae6b53c9bcecd30d6d9ffe46dc028c94368496de4508"),
    ]
)
