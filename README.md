# ScreenshotPreventing

A simple wrapper view that is able to prevent screenshot or screen recording on iOS.

## Requirement

iOS 13+.

## Installation

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

> Xcode 11+ is required to build ScreenshotPreventing using Swift Package Manager.

To integrate ScreenshotPreventing into your Xcode project using Swift Package Manager, add it to the dependencies value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/Sajjon/ScreenshotPreventing.git", .upToNextMajor(from: "1.4.0"))
]
```

## Demo Project

Clone this project, then

```shell
cd ScreenshotPreventing
# For normal demo
open Demo/Demo.xcodeproj
# For SwiftUI demo
open Demo-SwiftUI/Demo-SwiftUI.xcodeproj
```

Then build for any iOS simulator to test this out.

By triggering screenshot on simulator, look for `Simulator > Device > Trigger Screenshot`.

<img src="./Assets/demo.gif" width="470" />

## SwiftUI Usage

Simply wrap your view inside `ScreenshotPrevent` View. 
You should pass in a isProtected binding to toggle on whether to prevent screenshot or not.

```swift
import SwiftUI
import ScreenshotPreventingSwift

struct ContentView: View {

    @State private var preventScreenshot = false

    var body: some View {
        ScreenshotPrevent(isProtected: preventScreenshot) {
            Text("Hello")
                .padding()
                .background(Color.yellow)
                .cornerRadius(12)
        }
    }
}
```

or using view modifier extension

```swift
import SwiftUI
import ScreenshotPreventing

struct ContentView: View {

    @State private var preventScreenshot = false

    var body: some View {
        Text("Hello")
            .padding()
            .background(Color.yellow)
            .cornerRadius(12)
            .screenshotProtected(isProtected: preventScreenshot)
    }
}
```
