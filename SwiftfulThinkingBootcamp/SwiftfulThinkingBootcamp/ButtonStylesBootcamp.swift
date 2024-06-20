//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 20/06/2024.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            
            Button(action: {
                
            }
                   , label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            })
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            
            Button("Button Title") {
               
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)


            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)

            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)

            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)


            
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
