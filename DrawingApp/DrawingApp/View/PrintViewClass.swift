//
//  printView.swift
//  DrawingApp
//
//  Created by leehwajin on 2023/03/30.
//

import UIKit

protocol PrintView {
    func printView(rectangle : RectanglePr) -> UIView
}

class PrintViewClass: PrintView{

    func printView(rectangle: RectanglePr) -> UIView  {
        let view = UIView(frame: CGRect(x: Int(rectangle.locatedX), y: Int(rectangle.locatedY), width: rectangle.width, height: rectangle.height))
        view.backgroundColor = UIColor(red: rectangle.colorR/255, green: rectangle.colorG/255, blue: rectangle.colorB/255, alpha: CGFloat(Double(rectangle.alpha.rawValue)/10.0))
        view.layer.cornerRadius = 20

        let label = UILabel(frame: CGRect(origin: CGPoint(x: 20.0, y: 20.0), size: CGSize(width: 100, height: 80.0)))
        label.text = rectangle.name
        label.font = UIFont.systemFont(ofSize:15)
        label.textColor = .yellow
        view.addSubview(label)

        return view

    }
}

