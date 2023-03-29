import UIKit
import OSLog

class ViewController: UIViewController {
    var count = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0..<4{
           makeRectangle()
        }
    }
    
    @IBAction func makeRectangleButtonTapped(_ sender: Any) {
        makeRectangle()
    }
    
    
    
    func makeRectangle(){
        let name = "rectangle\(count)"
        let rectangleHeight = 120
        let rectangleWidth = 150
        
        let newRectangle = RectangleFactory().makeRectangle(name : name, width: rectangleWidth, height: rectangleHeight, locatedX: Double.random(in: (0...UIScreen.main.bounds.width)), locatedY: Double.random(in: (0...UIScreen.main.bounds.height)))
        
        os_log("\(newRectangle.description)")
        count += 1
    }
    
}

