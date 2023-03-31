//
//  RectangleFactory.swift
//  DrawingApp
//
//  Created by leehwajin on 2023/03/29.
//

import Foundation

class RectangleFactory{
    
    func makeRectangle(name : String, width : Int, height : Int, locatedX: Double, locatedY: Double) -> Rectangle{
        
        let id = MakeId().makeId()
        let colorR = CGFloat((0...255).randomElement()!)
        let colorG = CGFloat((0...255).randomElement()!)
        let colorB = CGFloat((0...255).randomElement()!)
        let alpha =  Alpha(rawValue: (1...10).randomElement()!)
        
//        plane.rectangleCollection.append(Rectangle(name: name, id: id, width: width, height: height, locatedX: locatedX, locatedY: locatedY, colorR: colorR, colorG: colorG, colorB: colorB, alpha: alpha))
//        
        return Rectangle(name: name, id: id, width: width, height: height, locatedX: locatedX, locatedY: locatedY, colorR: colorR, colorG: colorG, colorB: colorB, alpha: alpha!)
    }
}


