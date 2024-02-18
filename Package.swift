// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "DeckOfPlayingCards",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "DeckOfPlayingCards",
      targets: ["DeckOfPlayingCards"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/jinhongw/PlayingCard.git", from: "1.0.1"),
    .package(url: "https://github.com/jinhongw/FisherYates.git", from: "1.0.1"),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "DeckOfPlayingCards",
      dependencies: ["FisherYates", "PlayingCard"]
    ),
    .testTarget(
      name: "DeckOfPlayingCardsTests",
      dependencies: ["DeckOfPlayingCards"]
    ),
  ]
)
