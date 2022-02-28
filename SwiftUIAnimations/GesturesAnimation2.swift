//
//  GesturesAnimation2.swift
//  SwiftUIAnimations
//
//  Created by Takasur Azeem on 28/02/2022.
//

import SwiftUI

struct GesturesAnimation2: View {
    
    let letters = Array("Peace! 🇵🇸🇵🇸🇵🇸")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count) {
                Text(String(letters[$0]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .green : .mint)
                    .offset(dragAmount)
                    .animation(
                        .default.delay(Double($0) / 20),
                        value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
}

struct GesturesAnimation2_Previews: PreviewProvider {
    static var previews: some View {
        GesturesAnimation2()
    }
}
