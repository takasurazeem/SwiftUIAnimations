//
//  CustomTransitions.swift
//  SwiftUIAnimations
//
//  Created by Takasur Azeem on 01/03/2022.
//

import SwiftUI

struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}

struct CustomTransitions: View {
    
    @State private var isShowingGreen = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 200, height: 200)
            
            if isShowingGreen {
                Rectangle()
                    .fill(.green)
                    .frame(width: 200, height: 200)
                    .transition(.pivot)
            }
        }
        .onTapGesture {
            withAnimation {
                isShowingGreen.toggle()
            }
        }
    }
}

struct CustomTransitions_Previews: PreviewProvider {
    static var previews: some View {
        CustomTransitions()
    }
}
