//
//  UIImageView+Rounded.swift
//  MusicApplication
//
//  Created by aman on 04/04/24.
//

import Foundation
import UIKit

extension UIImageView {
    func makeRounded() {
        layer.borderWidth = 1
        layer.masksToBounds = false
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
}
