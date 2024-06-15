//
//  BackgroundMaterialBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 15/06/2024.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text("HI")
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
//            .background(.thinMaterial)
//            .background(.regularMaterial)
//            .background(.ultraThinMaterial)
//            .background(.thickMaterial)
//            .background(.ultraThickMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("malzahar.jpeg")
        )
    }
}

#Preview {
    BackgroundMaterialBootcamp()
}
