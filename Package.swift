
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.1/Connect_XCFramework_Debug.zip",
            checksum: "8e5ddf84c6142741ae3184847db30d00ca2dbbaee0a564620710877b2e1bb0f3"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.1/Tealeaf_XCFramework_Debug.zip",
            checksum: "050209c16e681066d2b2b7ce2bf4e176c6b7a19b5263cf12f13a36771a48b741"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.2.1/EOCore_XCFramework_Debug.zip",
            checksum: "7debc077b687e1ae4e35c2fd84a2cfd53fc945e377dcc182672ce9e8c9422114"),
    ]
)
