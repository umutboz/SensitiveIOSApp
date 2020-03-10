//
//  UIView+Extensions.swift
//  SensitiveInformation
//
//  Created by umut on 6.03.2020.
//  Copyright © 2020 Koçsistem. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func takeScreenShot() -> UIImage? {
        var image :UIImage?
        let currentLayer = UIApplication.shared.keyWindow!.layer
        let currentScale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(currentLayer.frame.size, false, currentScale);
        guard let currentContext = UIGraphicsGetCurrentContext() else {return nil}
        currentLayer.render(in: currentContext)
        image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let img = image else { return nil}
        return img
    }
   
}
