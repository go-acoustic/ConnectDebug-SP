
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
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.36/Connect_XCFramework_Debug.zip",
            checksum: "32bc7f3e02ef2d1e656ce409024b52444ad3073dd4df20b2038d0b443699d8b8"),
        .binaryTarget(
            name: "Tealeaf",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.36/Tealeaf_XCFramework_Debug.zip",
            checksum: "3736cf23a65ab48f11daed76d51d7ad26d83bf32a235d53770158a42ee0c7279"),
        .binaryTarget(
            name: "EOCore",
            url: "https://github.com/go-acoustic/Connect/releases/download/2.1.36/EOCore_XCFramework_Debug.zip",
            checksum: "38d4ee351f2ffb8ce498adcdb903499e680054e1f6b7daed5ded8a6afa38d0dd"),
    ]
)
