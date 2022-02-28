//
//  CustomAnimations.swift
//  SwiftUIAnimations
//
//  Created by Takasur Azeem on 28/02/2022.
//

import SwiftUI

struct CustomAnimations: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me!") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.green)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
    }
}

struct CustomAnimations_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnimations()
    }
}
