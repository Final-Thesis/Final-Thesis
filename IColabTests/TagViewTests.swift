//
//  TagViewTests.swift
//  IColabTests
//
//  Created by Kevin Dallian on 09/09/23.
//

import XCTest
@testable import IColab

final class TagViewTests: XCTestCase {
    
    func testRowCalculation(){
        let tagManager = TagManager()
        tagManager.tags = ["SwiftUI", "UIKit", "CoreML", "Vision", "AVFoundation", "SpriteKit", "Combine", "SceneKit", "CoreLocation"]
        let rows = tagManager.getRows()
        
        XCTAssertEqual(rows, 3)
    }
}
