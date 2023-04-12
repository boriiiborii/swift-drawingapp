import Foundation

//protocol RectanglePr : CustomStringConvertible{
//    var name: String { get set }
//    var id : String { get set }
//    var width : Int  { get set }
//    var height : Int  { get set }
//    var locatedX : Double  { get set }
//    var locatedY : Double  { get set }
//
//    var colorR : CGFloat  { get set }
//    var colorG : CGFloat  { get set }
//    var colorB : CGFloat  { get set }
//    var alpha : Alpha  { get set }
//}

struct Rectangle{
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
    var description: String {
        
        return "(name: \(name), id: \(id), X:\(locatedX), Y:\(locatedY), W\(width), H\(height), R:\(colorR), G:\(colorG), B:\(colorB), Alpha:\(alpha))"
    }
    
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





enum Alpha: Int {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7
    case eight = 8
    case nine = 9
    case ten = 10
}
