//
//  UIButton+ScaleToSize.swift
//  BinManagement
//
//  Created by hwijinjeong on 2023/11/16.
//

import UIKit

extension UIImage {
    func scaleToSize(_ size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage ?? UIImage()
    }
}
