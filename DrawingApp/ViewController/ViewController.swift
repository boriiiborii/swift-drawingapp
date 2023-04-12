import UIKit
import OSLog


class ViewController: UIViewController {
    var plane = Plane()
    var selectedView: UIView?
    var selectedRectangle: Rectangle?
    var rectangleViews = [UIView]()
    let rectangleFactory = RectangleFactory()
    let printView = PrintViewClass()
    var toggle = false
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var slider: UISlider!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        redButton.setTitle("빨강빨강", for: .normal)
        yellowButton.setTitle("노랑노랑", for: .normal)
        blueButton.setTitle("파랑파랑", for: .normal)
      
    }
    
    func toggle(toggle:Bool) -> Bool{
        if toggle == true{
            return false
        }else{
            return true
        }
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
        slider.value = Float((selectedRectangle?.alpha.rawValue)!)/10.0
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
    
    func makeRectangle() -> Rectangle{
        let name = "rectangle\(plane.countRectangles() + 1)"
        let rectangleHeight = 120
        let rectangleWidth = 150
        
        let newRectangle = rectangleFactory.makeRectangle(name : name, width: rectangleWidth, height: rectangleHeight, locatedX: Double.random(in: (0...UIScreen.main.bounds.width)), locatedY: Double.random(in: (0...UIScreen.main.bounds.height)))
        
        os_log("\(newRectangle.description)")
        return newRectangle
    }
    
    @IBAction func changeColorButtonTapped(_ sender: UIButton) {
        guard let titleColor = sender.currentTitle else{return}
        switch titleColor {
        case "빨강빨강":
            selectedView?.backgroundColor = .red
        case "파랑파랑":
            selectedView?.backgroundColor = .blue
        case "노랑노랑":
            selectedView?.backgroundColor = .yellow
        default: break
        }
        
    }
    
    @IBAction func controlledSlider(_ sender: Any) {
        if Int(slider.value)*10 == 0{
            selectedRectangle?.alpha = Alpha(rawValue: 1)!
            
        }else{
            selectedRectangle?.alpha = Alpha(rawValue: (Int(slider.value*10)))!
        }
        
        selectedView?.backgroundColor = .white
        self.view.addSubview( printView.printView(rectangle:selectedRectangle!))
    }
}



