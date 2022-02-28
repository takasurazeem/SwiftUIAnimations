//
//  AnimationStack.swift
//  SwiftUIAnimations
//
//  Created by Takasur Azeem on 28/02/2022.
//

import SwiftUI

struct AnimationStack: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap here!") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .green : .blue)
        .animation(.default, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct AnimationStack_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStack()
    }
}
