//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 14/05/2024.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50,
                       height: 100)
                .animation(.spring(response: 1.0,
                                   dampingFraction: 0.2,
                                   blendDuration: 1.0), value: isAnimating)
//                .animation(Animation.linear(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50,
//                       height: 100)
                .animation(Animation.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
