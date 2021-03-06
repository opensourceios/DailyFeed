//
//  NewsAPITests.swift
//  DailyFeed
//
//  Created by Sumit Paul on 13/01/17.
//

import XCTest
@testable import DailyFeed

class NewsAPITests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testNewsAPI() {
        XCTAssertEqual(NewsAPI.sources(category: nil).url, URL(string: "https://newsapi.org/v1/sources?category=&language=en"))

        XCTAssertEqual(NewsAPI.articles(source: "fortune").url,
                       URL(string: "https://newsapi.org/v1/articles?source=fortune&apiKey=53b8c0ba0ea24a199f790d660b73675f"))

        XCTAssertEqual(NewsAPI.articles(source: nil).jsonKey, "articles")
        XCTAssertEqual(NewsAPI.sources(category: nil).jsonKey, "sources")
    }
}
