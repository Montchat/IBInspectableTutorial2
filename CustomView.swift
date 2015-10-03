//
//  CustomView.swift
//  IBInspectableTutorial2
//
//  Created by Joe E. on 10/3/15.
//  Copyright © 2015 Joe E. All rights reserved.
//

import UIKit
@IBDesignable
class CustomView: UIView {
    
    @IBInspectable var firstColor: UIColor = UIColor.blackColor()
    @IBInspectable var secondColor: UIColor = UIColor.whiteColor()
    @IBInspectable var thirdColor: UIColor = UIColor.redColor()
    
    func addOval(lineWidth: CGFloat, path: CGPathRef, strokeStart: CGFloat, strokeEnd: CGFloat, strokeColor: UIColor, fillColor: UIColor, shadowRadius: CGFloat, shadowOpacity: Float, shadowOffset: CGSize) {
        
        let arc = CAShapeLayer()
        arc.lineWidth = lineWidth
        arc.path = path
        arc.strokeStart = strokeStart
        arc.strokeEnd = strokeEnd
        arc.strokeColor = strokeColor.CGColor
        arc.fillColor = fillColor.CGColor
        arc.shadowColor = UIColor.blackColor().CGColor
        arc.shadowRadius = shadowRadius
        arc.shadowOpacity = shadowOpacity
        arc.shadowOffset = shadowOffset
        layer.addSublayer(arc)
        
    }
    
    override func drawRect(rect: CGRect) {
        self.addCircle(80, capRadius: 20, color: self.firstColor)
        self.addCircle(150, capRadius: 20, color: self.secondColor)
        self.addCircle(215, capRadius: 20, color: self.thirdColor)
    }
    
    func addCircle(arcRadius: CGFloat, capRadius: CGFloat, color: UIColor) {
        let x = CGRectGetMidX(self.bounds)
        let y = CGRectGetMidY(self.bounds)
        
        let pathBottom = UIBezierPath(ovalInRect: CGRectMake((x - (arcRadius/2)), (y - (arcRadius/2)), arcRadius, arcRadius)).CGPath
        self.addOval(20.0, path: pathBottom, strokeStart: 0, strokeEnd: 0.5, strokeColor: color, fillColor: UIColor.clearColor(), shadowRadius: 0, shadowOpacity: 0, shadowOffset: CGSizeZero)
        
        let pathMiddle = UIBezierPath(ovalInRect: CGRectMake((x - (capRadius/2)) - (arcRadius/2), (y - (capRadius/2)), capRadius, capRadius)).CGPath
        self.addOval(0.0, path: pathMiddle, strokeStart: 0, strokeEnd: 1.0, strokeColor: color, fillColor: color, shadowRadius: 5.0, shadowOpacity: 0.5, shadowOffset: CGSizeZero)
        
        let pathTop = UIBezierPath(ovalInRect: CGRectMake((x - (arcRadius/2)), (y - (arcRadius/2)), arcRadius, arcRadius)).CGPath
        self.addOval(20.0, path: pathTop, strokeStart: 0.5, strokeEnd: 1.0, strokeColor: color, fillColor: UIColor.clearColor(), shadowRadius: 0, shadowOpacity: 0, shadowOffset: CGSizeZero)
        
    }

}
