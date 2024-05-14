//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 14/05/2024.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Button") {
                //                withAnimation(.default) {
                withAnimation(Animation.default.repeatForever(autoreverses: false)) {

                    isAnimated.toggle()
                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300: 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
