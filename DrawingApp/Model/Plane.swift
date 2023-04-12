//
//  Plane.swift
//  DrawingApp
//
//  Created by leehwajin on 2023/03/29.
//

import Foundation

struct Plane{
    
    var rectangleCollection = [Rectangle]()
    
    func countRectangles() -> Int{
        return rectangleCollection.count
    }
    
    subscript(index: Int) -> Rectangle {
        return rectangleCollection[index-2]
    }
}
