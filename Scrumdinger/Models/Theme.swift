//
//  Theme.swift
//  Scrumdinger
//
//  Created by Jose Muñoz on 08-02-23.
//

import Foundation
import SwiftUI

enum Theme: String{
    
    case bubblegum
    case buttercup
    case indigo
    case lavanda
    case magenta
    case navy
    case naranjo
    case oxblood
    case periwinkle
    case amapola
    case morado
    case seafoam
    case sky
    case tan
    case teal
    case amarillo
    
    var accentColor: Color {
            switch self {
            case .bubblegum, .buttercup, .lavanda, .naranjo, .periwinkle, .amapola, .seafoam, .sky, .tan, .teal, .amarillo: return .black
            case .indigo, .magenta, .navy, .oxblood, .morado: return .white
            }
        
        }
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }
    
}
