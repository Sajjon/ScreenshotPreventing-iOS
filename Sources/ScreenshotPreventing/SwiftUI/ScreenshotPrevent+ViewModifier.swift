//
//  ScreenshotPrevent+ViewModifier.swift
//  
//
//  Created by David on 2023/4/28.
//

import SwiftUI

/// View modifier to wrap view inside a screenshot prevented view.
public struct PreventScreenshot: ViewModifier {

    public let isProtected: Bool

    public func body(content: Content) -> some View {
        _ScreenshotPreventView(preventScreenCapture: isProtected) {
            content
        }
    }
}

public extension View {

    /// A view extension to wrap view inside a screenshot protected view.
    /// - Parameter isProtected: whether or not to protect view from being screenshot.
    /// - Returns: wrapped view
    func screenshotProtected(isProtected: Bool) -> some View {
        modifier(PreventScreenshot(isProtected: isProtected))
    }
}

