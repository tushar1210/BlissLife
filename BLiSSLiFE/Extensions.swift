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
