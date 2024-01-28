//
//  UIButtonExtension.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

extension UIButton.Configuration {
    
    static func configureStyle(title: String,
                               font: UIFont?,
                               image: UIImage?,
                               foregroundColor: UIColor?,
                               backgroundColor: UIColor?) -> UIButton.Configuration {
        
        var config = UIButton.Configuration.filled()
        var titleAttributesContainer = AttributeContainer()
        
        titleAttributesContainer.font = font ?? .boldSystemFont(ofSize: 12)
        
        config.title = title
        config.attributedTitle = AttributedString(title, attributes: titleAttributesContainer)
        config.titleAlignment = .trailing
        
        if let image {
            config.image = image
        }
        
        config.imagePlacement = .leading
        config.imagePadding = 2
        
        config.baseForegroundColor = foregroundColor ?? .white
        config.baseBackgroundColor = backgroundColor ?? .blue
        
        return config
    }
}
