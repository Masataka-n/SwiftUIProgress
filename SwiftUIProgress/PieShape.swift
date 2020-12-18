//
//  PieShape.swift
//  SwiftUIProgress
//
//  Created by Masataka Nakagawa on 2020/12/18.
//

import SwiftUI

struct PieShape: Shape {

    var value: CGFloat

    var animatableData: CGFloat {
        get { value }
        set { value = newValue }
    }

    func path(in rect: CGRect) -> Path {
        Path { path in
            let center = CGPoint(x: rect.midX, y: rect.midY)
            path.move(to: center)
            path.addArc(
                center: center,
                radius: rect.width / 2,
                startAngle: .degrees(0),
                endAngle: .degrees(Double(360 * value)),
                clockwise: false
            )
            path.closeSubpath()
        }
    }
}
