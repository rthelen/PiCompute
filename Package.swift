// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PiCompute",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "PiCompute",
            targets: ["PiCompute"]),
        .executable(
            name: "PiComputeCLI",
            targets: ["PiComputeCLI"])
    ],
    targets: [
        .target(
            name: "PiComputeCore",
            path: "Sources/PiComputeCore",
            publicHeadersPath: "include",
            cxxSettings: [
                .cxxLanguageStandard(.cxx20),
                .define("PICOMPUTE_CORE")
            ]
        ),
        .target(
            name: "PiComputeBridge",
            dependencies: ["PiComputeCore"],
            path: "Sources/PiComputeBridge",
            publicHeadersPath: "include"
        ),
        .target(
            name: "PiCompute",
            dependencies: ["PiComputeBridge"],
            path: "Sources/PiCompute"
        ),
        .executableTarget(
            name: "PiComputeCLI",
            dependencies: ["PiCompute"],
            path: "Sources/PiComputeCLI"
        ),
        .testTarget(
            name: "PiComputeTests",
            dependencies: ["PiCompute"],
            path: "Tests/PiComputeTests"
        ),
        .testTarget(
            name: "CoreTests",
            dependencies: ["PiComputeCore"],
            path: "Tests/CoreTests",
            cxxSettings: [
                .cxxLanguageStandard(.cxx20)
            ]
        )
    ],
    cxxLanguageStandard: .cxx20
)