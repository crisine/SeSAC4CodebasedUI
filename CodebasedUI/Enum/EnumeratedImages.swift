//
//  EnumeratedImages.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

enum EnumeratedImages {
    
    case play
    case playFill
    
    case plus
    
    case house
    case houseFill
    
    case playRectangle
    case playRectangleFill
    
    case arrowDownCircle
    case arrowDownCircleFill
    
    case blue
    case pink
    case turquoise
    
    case dummy
    
    
    var image: UIImage! {
        switch self {
        case .play:
            return UIImage(systemName: "play")
        case .playFill:
            return UIImage(systemName: "play.fill")
        case .plus:
            return UIImage(systemName: "plus")
        case .house:
            return UIImage(systemName: "house")
        case .houseFill:
            return UIImage(systemName: "house.fill")
        case .playRectangle:
            return UIImage(systemName: "play.rectangle.on.rectangle")
        case .playRectangleFill:
            return UIImage(systemName: "play.rectangle.on.rectangle.fill")
        case .arrowDownCircle:
            return UIImage(systemName: "arrow.down.circle")
        case .arrowDownCircleFill:
            return UIImage(systemName: "arrow.down.circle.fill")
        case .blue:
            return UIImage(named: "blue")
        case .pink:
            return UIImage(named: "pink")
        case .turquoise:
            return UIImage(named: "turquoise")
        case .dummy:
            return UIImage(named: "dummy")
        }
    }
    
}
