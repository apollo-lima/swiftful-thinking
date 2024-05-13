//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 13/05/2024.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            Button("Press me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "BUTTON #2 WAS PRESSED"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    )
            })
            
            Button(action: {
                self.title = "Hello Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .foregroundColor(Color.gray)
                    .bold()
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

#Preview {
    ButtonBootcamp()
}
