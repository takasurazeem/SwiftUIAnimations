//
//  ShowHideViews.swift
//  SwiftUIAnimations
//
//  Created by Takasur Azeem on 28/02/2022.
//

import SwiftUI

struct ShowHideViews: View {
    
    @State private var isShowingGreen = false
    
    var body: some View {
        VStack {
            Button("Tap here!") {
                withAnimation {
                    isShowingGreen.toggle()
                }
            }
            if isShowingGreen {
                Rectangle()
                    .fill(.green)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .slide))
            }
        }
    }
}

struct ShowHideViews_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideViews()
    }
}
