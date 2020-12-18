//
//  PieProgressView.swift
//  SwiftUIProgress
//
//  Created by Masataka Nakagawa on 2020/12/18.
//

import SwiftUI

struct PieProgressView: View {

    var value: CGFloat

    var body: some View {
        ZStack {
            PieShape(value: value)
                .fill(Color.orange)
                .zIndex(1.0)
                .rotationEffect(.degrees(-90))
            Circle()
                .fill(Color.black.opacity(0.08))
        }
    }
}

struct PieProgressView_Previews: PreviewProvider {
    static var previews: some View {
        PieProgressView(value: 0.6)
    }
}
