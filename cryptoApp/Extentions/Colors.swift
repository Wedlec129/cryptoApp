//
//  Colors.swift
//  cryptoApp
//
//  Created by Борух Соколов on 22.09.2023.
//

import Foundation
import SwiftUI
//расширения для цветов что бы мы могли использовать свои цвета)

extension Color{
    
    static let theme = ColorTheme()
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    
}
