//: Playground - noun: a place where people can play

import UIKit

class DrawView: UIView {
    var lines = Line()
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        UIColor.magentaColor().set()
        
        
        for line in lines {
            if let start = line.start, let end = line.end {
                if let
            }
        }
    }
}


class Line {
   var startPoint: CGPoint
    var endPoint: CGPoint
    
    var strokeColor: UIColor?
    var fillColor: UIColor?
    
    var strokeWidth: CGFloat = 0
}

class Scribble: Line {
    var points = [CGPoint]() {
        didSet {
            start = points.first
            end = points.last
        }
    }
}

enum ShapeType {
    case Rectangle, Triangle, Cirle, Diamons
}

class Shape: Line {
    var type: ShapeType!
    init(type:ShapeType) {
        self.type = type
    }
    
}
