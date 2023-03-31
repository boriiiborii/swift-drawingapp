import Foundation

class Rectangle : Size, Location, Color{
    var name : String
    var id : String
    var width : Int
    var height : Int
    var locatedX : Double
    var locatedY : Double
    
    var colorR : CGFloat
    var colorG : CGFloat
    var colorB : CGFloat
    var alpha : Alpha
    
    init(name: String, id: String, width: Int, height: Int, locatedX: Double, locatedY: Double, colorR: CGFloat, colorG: CGFloat, colorB: CGFloat, alpha: Alpha) {
        self.name = name
        self.id = id
        self.width = width
        self.height = height
        self.locatedX = locatedX
        self.locatedY = locatedY
        self.colorR = colorR
        self.colorG = colorG
        self.colorB = colorB
        self.alpha = alpha
    }
}

extension Rectangle : CustomStringConvertible{
    var description: String {
        
        return "(name: \(name), id: \(id), X:\(locatedX), Y:\(locatedY), W\(width), H\(height), R:\(colorR), G:\(colorG), B:\(colorB), Alpha:\(alpha))"
    }
}

protocol Size{
    var width : Int {get}
    var height : Int {get}
}

protocol Location{
    var locatedX : Double {get}
    var locatedY : Double {get}
}

protocol Color{
    var colorR : CGFloat{get}
    var colorG : CGFloat{get}
    var colorB : CGFloat{get}
}

enum Alpha: Int {
    case one = 1
    case two, three, four, five, six, seven,eight, nine, ten
}
