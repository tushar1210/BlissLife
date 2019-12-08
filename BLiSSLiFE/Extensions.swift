//
//  Extensions.swift
//  BLiSSLiFE
//
//  Created by Tushar Singh on 05/12/19.
//  Copyright © 2019 Tushar Singh. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    /// Round UIView selected corners
    ///
    /// - Parameters:
    ///   - corners: selected corners to round
    ///   - radius: round amount
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    // view.roundCorners([.topLeft, .topRight, .bottomRight], radius: 6)
}

class SegueFromLeft: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination

        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)

        UIView.animate(withDuration: 0.25,
                              delay: 0.0,
                            options: .curveEaseInOut,
                         animations: {
                                dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
                                },
                        completion: { finished in
                                src.present(dst, animated: false, completion: nil)
                                    }
                        )
    }
}

final class CustomButton: UIButton {

    private var shadowLayer: CAShapeLayer!

    override func layoutSubviews() {
        super.layoutSubviews()

        if shadowLayer == nil {
            shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: bounds, cornerRadius: 33).cgPath
            if self.backgroundColor != nil {
                shadowLayer.fillColor = self.backgroundColor?.cgColor
            }
            else{
                shadowLayer.fillColor = UIColor.white.cgColor
            }
            shadowLayer.shadowColor = UIColor.gray.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 0.0, height: 3.0)
            shadowLayer.shadowOpacity = 0.4
            shadowLayer.shadowRadius = 2

            layer.insertSublayer(shadowLayer, at: 0)
            
        }

    }

}

extension UITextField {
    func setUnderLine() {
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width-10, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    func setSideLine(){
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 10, y: self.frame.size.height - width, width:  self.frame.size.width-10, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    func setVerticalLine(){
        let border = CALayer()
        let width = CGFloat(0.5)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 10, y: self.frame.size.height - width, width:  self.frame.size.width-10, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
