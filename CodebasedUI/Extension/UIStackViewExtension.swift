//
//  UIStackViewExtension.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

extension UIStackView {
    
    func configureStyle(axis: NSLayoutConstraint.Axis?,
                        alignment: UIStackView.Alignment?,
                        distribution: UIStackView.Distribution?,
                        spacing: CGFloat?) {
        
        self.axis = axis ?? .horizontal
        self.alignment = alignment ?? .fill
        self.distribution = distribution ?? .fillEqually
        self.spacing = spacing ?? 8
    }
}
