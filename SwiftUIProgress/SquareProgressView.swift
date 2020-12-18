//
//  SquareProgressView.swift
//  SwiftUIProgress
//
//  Created by Masataka Nakagawa on 2020/12/18.
//

import SwiftUI

struct SquareProgressView: View {

    var value: CGFloat
    var baseColor: Color = Color.black.opacity(0.08)
    var progressColor: Color = .orange

    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .trailing) {
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(baseColor)
                    Rectangle()
                        .fill(progressColor)
                        .frame(minWidth: 0, idealWidth:self.getProgressBarWidth(geometry: geometry),
                               maxWidth: self.getProgressBarWidth(geometry: geometry))
                }
            }
        }
    }

    func getProgressBarWidth(geometry:GeometryProxy) -> CGFloat {
        let frame = geometry.frame(in: .global)
        return frame.size.width * value
    }
}

struct SquareProgressView_Previews: PreviewProvider {
    static var previews: some View {
        SquareProgressView(value: 0.6)
    }
}
