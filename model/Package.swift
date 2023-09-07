// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "Model",
  platforms: [.iOS(.v17)]
)

// MARK: - (DEPENDENCIES)

package.dependencies = [
  .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.0.0")
]

// MARK: - (TARGETS)

let src = Target.target(
  name: package.name,
  dependencies: [
    .product(name: "Dependencies", package: "swift-dependencies")
  ],
  path: "src"
)

let test = Target.testTarget(
  name: "\(src.name)Tests",
  dependencies: [
    .target(name: src.name)
  ],
  path: "test"
)

package.targets = [src, test]

// MARK: - (PRODUCTS)

package.products = [.library(name: package.name, targets: [src.name])]
