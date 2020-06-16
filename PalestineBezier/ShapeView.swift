// https://github.com/m760622
//  ShapeView.swift
//  PalestineBezier
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-16.
//  Copyright © 2020 NMDS. All rights reserved.
// https://github.com/m760622/PalestineBezier

import SwiftUI

struct ShapeView: Shape {
    let bezier: UIBezierPath
    let pathBounds: CGRect
    func path(in rect: CGRect) -> Path {
        let pointScale = (rect.width >= rect.height) ?
            max(pathBounds.height, pathBounds.width) : min(pathBounds.height, pathBounds.width)
        let pointTransform = CGAffineTransform(scaleX: 1/pointScale, y: 1/pointScale)
        let path = Path(bezier.cgPath).applying(pointTransform)
        let multiplier = min(rect.width, rect.height)
        let transform = CGAffineTransform(scaleX: multiplier, y: multiplier)
        return path.applying(transform)
        
    }//path
}//ShapeView

