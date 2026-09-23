
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.34/Connect_XCFramework_Debug.zip",
            checksum: "53113d54a004596252b1f6ab88638b04db1e4c6b43908940b247aaaa50478ce0"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.34/Tealeaf_XCFramework_Debug.zip",
            checksum: "ec4c98bcbab014bfe7e96e1537dc1b9c8904b3f22eb956b2678ab6ad8a6f188b"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.34/EOCore_XCFramework_Debug.zip",
            checksum: "da6691157be9680acd0115366fa8b3740a43e6b3be7812c50cb041b8abe827b7"),
    ]
)
