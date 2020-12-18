//
//  RingProgressView.swift
//  SwiftUIProgress
//
//  Created by Masataka Nakagawa on 2020/12/18.
//

import SwiftUI

struct RingProgressView: View {

    var value: CGFloat
    var lineWidth: CGFloat = 6.0
    var outerRingColor: Color = Color.black.opacity(0.08)
    var innerRingColor: Color = Color.orange
    var angle: Angle = .degrees(-90.0)

    var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .stroke(lineWidth: self.lineWidth)
                .foregroundColor(self.outerRingColor)

            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.value, 1.0)))
                .stroke(
                    style: StrokeStyle(
                        lineWidth: self.lineWidth,
                        lineCap: .square,
                        lineJoin: .round
                    )
                )
                .foregroundColor(self.innerRingColor)
                .rotationEffect(self.angle)
        }
        .padding(.all, self.lineWidth / 2)
    }
}

struct RingProgressView_Previews: PreviewProvider {

    static var previews: some View {
        RingProgressView(value: 0.6)
    }
}
