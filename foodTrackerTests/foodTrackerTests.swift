//
//  foodTrackerTests.swift
//  foodTrackerTests
//
//  Created by John Williams on 3/10/16.
//
//

import XCTest
@testable import foodTracker

class foodTrackerTests: XCTestCase {
    
    //MARK: foodTrackerTests
    
    /*
     Function: nilIninTest
     Pre: none
     Post: should return nil if no name, no photo, or rating<0
     */
    func nilIninTest()
    {
        //success case for no photo
        let noPhoto = meal(name: "new meal", photo: nil, rating: 3)
        XCTAssertNotNil(noPhoto)
        //fail case for no name
        let noName = meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "No name, invalid entry")
        //test case for rating<0
        let badRating = meal(name: "bad", photo: nil, rating: -1)
        XCTAssertNotNil(badRating)
        //bogus test
        XCTAssertTrue(true, "Bogus Test")
    }
}