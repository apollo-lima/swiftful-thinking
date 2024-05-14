//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 14/05/2024.
//

import SwiftUI
 
struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
                Text(isStartingState ? "STARTING STATE" : "ENDING STATE.")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200: 50,
                    height: isStartingState ? 400 : 50)
                .animation(.spring(response: 1.0, dampingFraction: 0.2, blendDuration: 1.0), value: isStartingState)
            
            Spacer()
            
        }
    }
}

#Preview {
    TernaryBootcamp()
}
