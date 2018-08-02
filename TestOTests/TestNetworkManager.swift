//
//  NetworkManagerTestCase.swift
//  TestOTests
//
//  Created by SENTHIL on 25/07/18.
//  Copyright © 2018 Oottru Technologies. All rights reserved.
//

import XCTest
@testable import TestO

class NetworkManagerTestCase: XCTestCase {
    
    var vc = NetworkManager()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func createUniqueInstance()-> NetworkManager {
        
        return NetworkManager()
        
    }
    
    
    func testNetworkMangersuccess() {
        //Network Success
    XCTAssertTrue(NetworkManager.shared.isNetworkReachable())

    XCTAssertTrue(Reachability.isConnectedToNetwork())
    XCTAssertNotNil(NetworkManager.shared)

        
    }
    
    func testNetworkManagerFail() {
      // Network Fail
  XCTAssertFalse(NetworkManager.shared.isNetworkReachable())
        XCTAssertFalse(Reachability.isConnectedToNetwork())
        
    }
    
    
   
    
    
}
