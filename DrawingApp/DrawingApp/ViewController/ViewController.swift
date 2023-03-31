import UIKit
import OSLog

class ViewController: UIViewController {
    var count = 1
    var plane = Plane()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func makeRectangleButtonTapped(_ sender: Any) {

        plane.rectangleCollection.append(makeRectangle())
        let rView = PrintView().printView(rectangle: plane.rectangleCollection.last!)
        rView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(_:)))
        rView.addGestureRecognizer(tapGesture)
        self.view.addSubview(rView)
    }
    
    @objc func viewTapped(_ sender: UITapGestureRecognizer) {
        guard let tappedView = sender.view else { return }
            print(tappedView.description)
    }

    
    func makeRectangle() -> Rectangle{
        let name = "rectangle\(count)"
        let rectangleHeight = 120
        let rectangleWidth = 150
        
        let newRectangle = RectangleFactory().makeRectangle(name : name, width: rectangleWidth, height: rectangleHeight, locatedX: Double.random(in: (0...UIScreen.main.bounds.width)), locatedY: Double.random(in: (0...UIScreen.main.bounds.height)))
        
        os_log("\(newRectangle.description)")
        count += 1
        return RectangleFactory().makeRectangle(name : name, width: rectangleWidth, height: rectangleHeight, locatedX: Double.random(in: (0...UIScreen.main.bounds.width)), locatedY: Double.random(in: (0...UIScreen.main.bounds.height)))
    }
    
}

