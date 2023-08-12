//
//  FontExtension.swift
//  GOW
//
//  Created by Mauricio Casillas on 11/08/23.
//

import Foundation
import UIKit

extension UIFont{
    func customFont(customFont font: String, customSize size: CGFloat, customStyle style: UIFont.TextStyle) -> UIFont{
        return UIFontMetrics(forTextStyle: style).scaledFont(for: UIFont(name: font, size: size)!)
    }
}
