//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 14/05/2024.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .opacity(showView ? 1.0 : 0.0)
//                    .transition(.move(edge: .bottom))
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
        TransitionBootcamp()
    }
