//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Vivien on 6/7/23.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        let hue = self.hueForElement(at: geo.frame(in: .global).midY)
                        let color = Color(hue: hue, saturation: 1, brightness: 1)
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(color)
                            .opacity(((geo.frame(in: .global).midY) < 200) ? Double((geo.frame(in: .global).midY) / 200) : 1.0)
                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                            .scaleEffect(((geo.frame(in: .global).midY) < 420) ? (geo.frame(in: .global).midY) / 250 : (geo.frame(in: .global).midY) / 400 )

                    }
                    .frame(height: 40)
                }
            }
        }
    }
    func hueForElement(at offset: CGFloat) -> Double {
            let maxOffset: CGFloat = 600
            return Double((offset + maxOffset) / (2 * maxOffset))
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
