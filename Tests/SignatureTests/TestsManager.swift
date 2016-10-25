/*
 * ==---------------------------------------------------------------------------------==
 *
 *  File            :   TestsManager.swift
 *  Project         :   Signature
 *  Author          :   ALEXIS AUBRY RADANOVIC
 *
 *  License         :   The MIT License (MIT)
 *
 * ==---------------------------------------------------------------------------------==
 *
 *	The MIT License (MIT)
 *	Copyright (c) 2016 ALEXIS AUBRY RADANOVIC
 *
 *	Permission is hereby granted, free of charge, to any person obtaining a copy of
 *	this software and associated documentation files (the "Software"), to deal in
 *	the Software without restriction, including without limitation the rights to
 *	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 *	the Software, and to permit persons to whom the Software is furnished to do so,
 *	subject to the following conditions:
 *
 *	The above copyright notice and this permission notice shall be included in all
 *	copies or substantial portions of the Software.
 *
 *	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 *	FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 *	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 *	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 *	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * ==---------------------------------------------------------------------------------==
 */

import XCTest
import Foundation

///
/// Manages the tests.
///

public class TestsManager {
    
    // MARK: - Files
    
    ///
    /// Returns the path to a PEM key.
    ///
    /// - parameter keyName: The name of the key, without extension.
    ///
    /// - returns: The path to the key if it exists.
    ///
    
    public static func path(ofKey keyName: String) -> String? {
        
        #if os(OSX)
            let bundle = Bundle(for: TestsManager.self)
            return bundle.path(forResource: keyName, ofType: "pem")
        #else
            let fixturesPath = NSString(string: "~/Signature-TestFixtures").expandingTildeInPath
            let keyPath = fixturesPath + "/" + keyName + ".pem"
            return FileManager.default.fileExists(atPath: keyPath) ? keyPath : nil
        #endif
        
    }

    
    // MARK: - Linux Support
    
    #if !os(OSX)
    
    ///
    /// Starts the tests.
    ///
    
    public static func run() {
        XCTMain([
            testCase(HMACTests.allTests),
            testCase(ECDSATests.allTests),
            testCase(RSATests.allTests)
        ])
    }
    
    #endif
    
}