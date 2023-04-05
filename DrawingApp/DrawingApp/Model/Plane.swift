//
//  Plane.swift
//  DrawingApp
//
//  Created by leehwajin on 2023/03/29.
//

import Foundation

struct Plane{
    
    var rectangleCollection = [RectanglePr]()
    
    func countRectangles() -> Int{
        return rectangleCollection.count
    }
    
    subscript(index: Int) -> RectanglePr {
        return rectangleCollection[index]
    }
}
