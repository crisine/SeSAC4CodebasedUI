//
//  UILabelExtension.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

extension UILabel {
    
    func configureStyle(font: UIFont,
                        text: String,
                        textColor: UIColor?,
                        backgroundColor: UIColor?,
                        alignStyle: NSTextAlignment?,
                        numberOfLines: Int?) {
        
        self.font = font
        self.text = text
        self.textColor = textColor ?? .black
        self.backgroundColor = backgroundColor ?? .clear
        self.textAlignment = alignStyle ?? .left
        self.numberOfLines = numberOfLines ?? 0
    }
}
