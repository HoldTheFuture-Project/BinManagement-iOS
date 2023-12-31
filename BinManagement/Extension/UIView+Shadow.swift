//
//  UIVie+Shadow.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/09/26.
//

import UIKit

extension UIView {
    func addShadow(
        right: Double = 2,
        down: Double = 3,
        color: UIColor = .gray,
        opacity: Float = 0.4,
        radius: CGFloat = 8
    ) {
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: right, height: down)
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.shadowColor = color.cgColor
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    }
    
    func addShadow02(
        right: Double = 0,
        down: Double = -3,
        color: UIColor = .gray,
        opacity: Float = 0.4,
        radius: CGFloat = 8
    ) {
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: right, height: down)
        layer.shadowOpacity = opacity
        layer.shadowRadius = radius
        layer.shadowColor = color.cgColor
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    }
    
    func removeShadow() {
        layer.shadowOpacity = Float(0.0)
    }
}
