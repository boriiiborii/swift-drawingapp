import UIKit
import OSLog


class ViewController: UIViewController {
    var plane = Plane()
    var selectedView: UIView?
    var selectedRectangle: RectanglePr?
    var rectangleViews = [UIView]()
    let rectangleFactory = RectangleFactory()
    let printView = PrintViewClass()
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var color: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @objc func tappedView(_ sender: UITapGestureRecognizer) {
        guard let tappedView = sender.view else { return }
        let tag = tappedView.tag
        tappedView.layer.borderColor = UIColor.red.cgColor
        tappedView.layer.borderWidth = 2
        

        if let selectedView = selectedView {
            selectedView.layer.borderWidth = 0
        }
        
        selectedView = tappedView
        selectedRectangle = plane[tag]
        color.text = ("\(String(describing: selectedRectangle?.colorR))")
        print(selectedRectangle as Any)
    }
    
    @IBAction func makeRectangleButtonTapped(_ sender: Any) {
        plane.rectangleCollection.append(makeRectangle())
        let rectangle = plane.rectangleCollection.last!
        let view = printView.printView(rectangle: rectangle)
        view.tag = plane.countRectangles() + 1
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tappedView(_:)))

        view.addGestureRecognizer(tapGesture)
        rectangleViews.append(view)
        self.view.addSubview(view)
    }
    
func makeRectangle() -> RectanglePr{
        let name = "rectangle\(plane.countRectangles() + 1)"
        let rectangleHeight = 120
        let rectangleWidth = 150

        let newRectangle = rectangleFactory.makeRectangle(name : name, width: rectangleWidth, height: rectangleHeight, locatedX: Double.random(in: (0...UIScreen.main.bounds.width)), locatedY: Double.random(in: (0...UIScreen.main.bounds.height)))

        os_log("\(newRectangle.description)")
        return newRectangle
    }

    @IBAction func changeSliderValue(_ sender: Any) {
        
    }
}



