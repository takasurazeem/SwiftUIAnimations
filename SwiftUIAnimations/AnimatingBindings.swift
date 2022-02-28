//
//  AnimatingBindings.swift
//  SwiftUIAnimations
//
//  Created by Takasur Azeem on 28/02/2022.
//

import SwiftUI

struct AnimatingBindings: View {
    
    @State private var animationAmount = 1.0
    
    
    var body: some View {
        VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                    .repeatCount(3, autoreverses: true)
            ))
                .padding(.horizontal)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.green)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}

struct AnimatingBindings_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindings()
    }
}
