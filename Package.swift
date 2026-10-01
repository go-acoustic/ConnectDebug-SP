
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.44/Connect_XCFramework_Debug.zip",
            checksum: "4cdbde510ef871d514fe88fd56a09d40177d81310eedd6553e00c6513bc446f4"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.44/Tealeaf_XCFramework_Debug.zip",
            checksum: "7f6c83d8a297e3dd5d35f16831e092072a15b711446a8205cb11c32137c298c7"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.44/EOCore_XCFramework_Debug.zip",
            checksum: "5b5261508932f1d4544471f68f75367f990d633eaad20846e4b87f8f5e68a017"),
    ]
)
