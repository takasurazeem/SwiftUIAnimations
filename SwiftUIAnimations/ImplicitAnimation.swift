//
//  ImplicitAnimation.swift
//  SwiftUIAnimations
//
//  Created by Takasur Azeem on 27/02/2022.
//

import SwiftUI

struct ImplicitAnimation: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
            animationAmount += 1.0
        }
        .padding(50)
        .background(.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimation()
    }
}
