//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 29/05/2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggeleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggeleIsOn ? "Online" : "Offline")
                    .foregroundStyle(toggeleIsOn ? .green : .red)
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Toggle(
                isOn: $toggeleIsOn,
                label: {
                Text("Change status")
            })
        .toggleStyle(SwitchToggleStyle(tint: .purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
