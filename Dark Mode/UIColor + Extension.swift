//
//  UIColor + Extension.swift
//  Dark Mode
//
//  Created by Кирилл Медведев on 25/09/2019.
//  Copyright © 2019 Kirill Medvedev. All rights reserved.
//

import UIKit

extension UIColor {
    // Create dinamic Color
    static let dinamicColor = { (traitCollection: UITraitCollection) -> UIColor in
        if traitCollection.userInterfaceStyle == .dark {
            return .red
        } else {
            return .green
        }
    }
    // Create Inverse Color
    static let complementaryColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
        if traitCollection.userInterfaceStyle == .dark {
            return .black
        } else {
            let ciColor = CIColor(color: .red)
            let compRed: CGFloat = 1.0 - ciColor.red
            let compGreen: CGFloat = 1.0 - ciColor.green
            let compBlue: CGFloat = 1.0 - ciColor.blue
            return UIColor(red: compRed, green: compGreen, blue: compBlue, alpha: 1.0)
        }
    }
}
