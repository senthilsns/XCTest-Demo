//
//  TestActivityLoader.swift
//  TestOTests
//
//  Created by SENTHIL on 25/07/18.
//  Copyright © 2018 Personal. All rights reserved.
//

import XCTest
@testable import TestO

class TestActivityLoader: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testActivityLoader() {
        
        XCTAssertNotNil(ActivityManager.Shared.show())
        XCTAssertNotNil(ActivityManager.Shared.remove())
        
        
    }
    

    
}
