# sample-ios-c-wrapper-swift-package

## How to use a static c library in a Swift-Package

1. Build the C-Source for your target platform. (e.g.: iOS and iOS-Simulator)
2. Create a module.modulemap file and place it beside your header files.
3. Pack a XCFramework package that includes the header dir and the static libraries. (*.a)
4. Add a '.binaryTarget' to the targets section of your Package.swift file.
5. Add the Binary-Target to the dependency area of your library target.
6. Use the C-Code via import <c-library-name>.

## How to add and use a local Swift-Package

1. Drag and drop the Swift-Package folder from Finder into the main Group of your Project
2. Go to the General-Tab of your app target and add click on the + of the Frameworks, Libraries ... section.
3. Choose the Swift-Package-Library from the workspace section.
4. Use your Swift-Package-Library via import <library-name>.
