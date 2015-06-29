//
//  Gradient.swift
//  Gradient
//
//  Created by Matthew McClure on 6/11/15.
//  Copyright (c) 2015 Matthew McClure. All rights reserved.
//

import UIKit

extension CAGradientLayer {
  
  func colorFade() -> CAGradientLayer {
    
    let topColor = UIColor(red: 202/255.0, green: 8/255.0, blue: 17/255.0, alpha: 1)
    let bottomColor = UIColor(red: 150/255.0, green: 6/255.0, blue: 14/255.0, alpha: 1)
    let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
    let gradientLocations = [0.0, 1.0]
    
    let gradientLayer: CAGradientLayer = CAGradientLayer()
    gradientLayer.colors = gradientColors
    gradientLayer.locations = gradientLocations
    
    
    return gradientLayer
  }
  
  func lightColorFade() -> CAGradientLayer {
    
    let topColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1)
    let bottomColor = UIColor(red: 206/255.0, green: 206/255.0, blue: 206/255.0, alpha: 1)
    let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
    let gradientLocations = [0.0, 1.0]
    
    let gradientLayer: CAGradientLayer = CAGradientLayer()
    gradientLayer.colors = gradientColors
    gradientLayer.locations = gradientLocations
    
    
    return gradientLayer
  }
  
  
  
  
}
