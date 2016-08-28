//
// Created by Thomas Christensen on 27/08/16.
// Copyright (c) 2016 Sebastian Kreutzberger. All rights reserved.
//

import Foundation

// Extend the NSURL object with helpers

extension NSURL {
    /**
        Replaces the last path component of the URL with the path component and returns a new URL or nil.

        - Parameter pathComponent: path component to replace last path component with

        - Returns: A new URL object or nil
     */
    @available(iOS 4.0, *)
    public func URLByReplacingLastPathComponent(pathComponent: String) -> NSURL? {
        if let tmpurl = self.URLByDeletingLastPathComponent {
            return tmpurl.URLByAppendingPathComponent(pathComponent)
        }
        return nil
    }
}
