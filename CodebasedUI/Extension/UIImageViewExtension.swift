//
//  UIImageViewExtension.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

extension UIImageView {
    
    func configureStyle(image: UIImage,
                        contentMode: UIView.ContentMode?,
                        isRounded: Bool) {
        self.image = image
        self.contentMode = contentMode ?? .scaleAspectFill
        
        guard isRounded else { return }
        self.clipsToBounds = true
        self.layer.cornerRadius = 8        
    }
}
