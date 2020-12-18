//
//  ContentView.swift
//  SwiftUIProgress
//
//  Created by Masataka Nakagawa on 2020/12/18.
//

import SwiftUI

struct ContentView: View {

    @State var value: CGFloat = 0.0

    var body: some View {
        VStack(spacing: 50) {
            RingProgressView(value: value)
                .frame(width: 150, height: 150)

            PieProgressView(value: value)
                .frame(width: 150, height: 150)

            SquareProgressView(value: value)
                .frame(height: 20)

            Button(action: {
                withAnimation(.linear(duration: 5)) {
                    self.value = 1.0

                }
            }, label: {
                Text("Start")
            })

            Button(action: {
                self.value = 0
            }, label: {
                Text("Reset")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
