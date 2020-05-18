//
//  GradientView.swift
//  UIViewGradient
//
//  Created by Junior Obici on 18/05/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import Foundation
import UIKit

class GradientViewED: UIView {
    override func draw(_ rect: CGRect) {
        let colorSpace: CGColorSpace = CGColorSpaceCreateDeviceRGB()
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.saveGState()
        
        let startColor: UIColor = UIColor.blue
        let endColor: UIColor = UIColor.purple
        let colors = [startColor.cgColor, endColor.cgColor]
        let locations: [CGFloat] = [0, 1]
        let gradient: CGGradient = CGGradient(colorsSpace: colorSpace, colors: colors as CFArray, locations: locations)!

        //Da esquerda para a direita
        let startPoint: CGPoint = CGPoint(x: 0, y: self.bounds.height)
        let endPoint: CGPoint = CGPoint(x: self.bounds.width, y: self.bounds.height)
        
        context.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: [])
        context.restoreGState()
    }
}

class GradientViewCB: UIView {
    override func draw(_ rect: CGRect) {
        let colorSpace: CGColorSpace = CGColorSpaceCreateDeviceRGB()
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.saveGState()
        
        let startColor: UIColor = UIColor.blue
        let endColor: UIColor = UIColor.purple
        let colors = [startColor.cgColor, endColor.cgColor]
        let locations: [CGFloat] = [0, 1]
        let gradient: CGGradient = CGGradient(colorsSpace: colorSpace, colors: colors as CFArray, locations: locations)!
        
        //De cima para baixo
        let startPoint: CGPoint = CGPoint(x:rect.midX, y: rect.minY)
        let endPoint: CGPoint = CGPoint(x: rect.midX, y: rect.maxY)

        context.drawLinearGradient(gradient, start: startPoint, end: endPoint, options: [])
        context.restoreGState()
    }
}
