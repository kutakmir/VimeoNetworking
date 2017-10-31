//
//  Request+VideoTests.swift
//  VimeoNetworkingExample-iOS
//
//  Created by Hawkins, Jason on 7/11/17.
//  Copyright © 2017 Vimeo. All rights reserved.
//

import XCTest
@testable import VimeoNetworking

class Request_VideoTests: XCTestCase
{
    func test_VideoRequest_ForVideoURI_ReturnsRequestWithCorrectURI()
    {
        let videoURI = "vimeo.com/123456789"
        let videoRequest = Request<VIMVideo>.videoRequest(forVideoURI: videoURI)
        XCTAssertTrue(videoURI == videoRequest.path, "The given URI does not match the path returned by the video request.")
    }
    
    func test_VideoRequest_PasswordProtectedVideoRequest_ReturnsRequestWithPasswordParameter()
    {
        let videoURI = "vimeo.com/123456789"
        let password = "sekrets"
        let passwordProtectedVideoRequest = Request<VIMVideo>.passwordProtectedVideoRequest(forVideoURI: videoURI, password: password)
        let parameters = passwordProtectedVideoRequest.parameters as! [String: String]
        XCTAssertTrue(password == parameters["password"], "The given password does not match the password provided as a paramter in the return request.")
    }
    
    func test_VideoRequest_VODVideoRequest_ReturnsRequestWithVideoOverrideParameterSetToTrue()
    {
        let vodVideoURI = "vimeo.com/1234556789"
        let vodVideoRequest = Request<VIMVODItem>.vodVideoRequest(forVODVideoURI: vodVideoURI)
        let parameters = vodVideoRequest.parameters as! [String: String]
        XCTAssertTrue(vodVideoURI == vodVideoRequest.path)
        XCTAssertTrue(parameters["_video_override"] == "true")
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
