//
//  Request+VideoTests.swift
//  VimeoNetworkingExample-iOS
//
//  Created by Hawkins, Jason on 7/11/17.
//  Copyright © 2017 Vimeo. All rights reserved.
//

import XCTest
@testable import VimeoNetworking

class Request_VideoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_VideoRequest_ForVideoURI_ReturnsRequestWithCorrectURI() {
        
    }
    
    func test_VideoRequest_PasswordProtectedVideoRequest_ReturnsRequestWithPasswordParameter() {
        
    }
    
    func test_VideoRequest_VODVideoRequest_ReturnsRequestWithVideoOverrideParameterSetToTrue() {
        
    }
    
    func test_VideoRequest_SelectedUsersRequest_ReturnsRequestWithPerPageKeySetTo100() {
        
    }
    
    func test_VideoRequest_QueryVideosWithQueryAndRefinements_ReturnsRequestWithQueryParameterAndRefinements() {
        
    }
    
    func test_VideoRequest_QueryVideosWithQueryAndRefinements_ReturnsRequestWithEmptyRefinementsDictionary_WhenRefinementsAreNil() {
        
    }
    
    func test_VideoRequest_PatchVideoRequest_ReturnsRequestWithPatchMethod() {
        
    }
    
    func test_VideoRequest_DeleteVideoRequest_ReturnsRequestWithDeleteMethod() {
        
    }
}
