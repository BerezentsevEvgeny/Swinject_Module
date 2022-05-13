//
//  ColorProvider.swift
//  Swinject_Module
//
//  Created by Евгений Березенцев on 13.05.2022.
//

import UIKit

protocol ColorProviding {
    var color: UIColor { get }
}


class ColorProvider: ColorProviding {
    var color: UIColor {
        let colors: [UIColor] = [.green, .blue, .yellow]
        return colors.randomElement()!
    }
    
    
}
