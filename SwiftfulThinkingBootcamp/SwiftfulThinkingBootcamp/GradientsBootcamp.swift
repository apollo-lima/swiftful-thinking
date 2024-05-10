//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 10/05/2024.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(
                    //                Color.red
//                    LinearGradient(
//                        gradient: Gradient(colors: [Color.blue, Color("CustomColor")]),
//                        startPoint: .topLeading,
//                        endPoint: .bottom)
//                )
//                    RadialGradient(colors: [Color.red, Color.blue],
//                                    center: .topLeading,
//                                    startRadius: 5,
//                                    endRadius: 400)
//                    AngularGradient.init(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
//                                         center: .topLeading,
//                                         angle: .degrees(180+45))
                    )
                .frame(width: 300, height: 200)
            
            Text("VISA")
                .frame(width: 275, height: 180, alignment: .bottomTrailing)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
            
            Image(systemName: "apple.logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    GradientsBootcamp()
}
