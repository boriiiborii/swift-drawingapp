//
//  DrawingAppTests.swift
//  DrawingAppTests
//
//  Created by leehwajin on 2023/03/30.
//

import XCTest

final class DrwingAppTests: XCTestCase {
    
    
    let factory = RectangleFactory()
    var plane = Plane()
    let printView = PrintViewClass()
    
    override func setUp() {
        // 사각형 추가
        let rectangle = factory.makeRectangle(name: "rectangle1", width: 100, height: 100, locatedX: 0, locatedY: 0)
        plane.rectangleCollection.append(rectangle)
    }
       
    func testCountRectangles() {
        XCTAssertEqual(plane.countRectangles(), 1)
    }
    
    func testRectangleAtIndex() {
        let rectangle = plane[0]
        XCTAssertEqual(rectangle.name, "rectangle1")
    }
    
    func testPrintView() {
        let rectangle = plane[0]
        let view = printView.printView(rectangle: rectangle)
        XCTAssertNotNil(view)
    }
    
}
