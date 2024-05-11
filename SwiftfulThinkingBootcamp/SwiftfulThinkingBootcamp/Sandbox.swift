//
//  Sandbox.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 11/05/2024.
//

import SwiftUI

struct Sandbox: View {
    var body: some View {
        VStack {
            Text("Choose your subscription")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            HStack {
                Rectangle()
                    .fill(Color.white)
                    .cornerRadius(10)
                    .frame(width: .infinity, height: 150)
                    .overlay(
                        VStack {
                            Text("Basic")
                                .font(.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("$9")
                            Text("per month")
                                .font(.caption)
                                .fontWeight(.semibold)
                        }
                    )
                
                Rectangle()
                    .fill(Color.yellow)
                    .cornerRadius(10)
                    .frame(width: .infinity, height: 150)
                    .overlay(
                        VStack {
                            Text("Gold")
                                .font(.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("$49")
                            Text("per month")
                                .font(.caption)
                                .fontWeight(.semibold)
                        }
                    )
            }
            .padding(.horizontal, 10)
            
            Rectangle()
                .fill(Color.gray)
                .cornerRadius(10)
                .frame(width: .infinity, height: 150)
                .padding(.horizontal, 10)
                .padding(.bottom, 20)
                .overlay(
                    VStack {
                        Text("Titanium")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("$99")
                        Text("per month")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                        .foregroundColor(.white)
                )
            Button {
                   // code
                   } label: {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color.pink]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    )
                    .cornerRadius(25)
                    .frame(width: .infinity, height: 65)
                    .padding(.horizontal, 20)
                    .overlay(
                        Text("Subscribe")
                            .font(.headline)
                            .foregroundColor(.white)
                    )
            }
            
            Rectangle()
                .fill(Color.red)
                .cornerRadius(25)
                .frame(width: .infinity, height: 65)
                .padding(.horizontal, 20)
                .overlay(
                Text("Maybe next time")
                    .font(.headline)
                    .foregroundColor(.white)
                )
        }
        .frame(maxHeight: .infinity)
        .background(Color.black)
        
    }
}

#Preview {
    Sandbox()
}
