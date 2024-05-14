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
                .foregroundStyle(.white)
            

            
            contentLayer1
            contentLayer2
            
            
            Button {
                // code
            } label: {
                Rectangle()
                    .fill(
                        Color(.systemBlue)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    .frame(width: .infinity, height: 65)
                    .padding(.horizontal, 20)
                    .overlay(
                        Text("Subscribe")
                            .font(.headline)
                            .foregroundStyle(.white)
                    )
            }
            Button {
                
            } label: {
                Rectangle()
                    .fill(Color(.systemRed))
                    .cornerRadius(25)
                    .frame(width: .infinity, height: 65)
                    .padding(.horizontal, 20)
                    .overlay(
                        Text("Maybe next time")
                            .font(.headline)
                            .foregroundStyle(.white)
                    )
            }
        }
        .frame(maxHeight: .infinity)
        .background(Color.black)
            
        
    }
    
    var contentLayer1: some View {
        HStack {
            subscriptionPlan(color: .white, title: "Basic", price: 9)
            subscriptionPlan(color: .yellow, title: "Gold", price: 49)
            
        }
        .padding(.horizontal, 10)
    }
    
    var contentLayer2: some View {
        subscriptionPlan(color: .gray, title: "Titanium", price: 99)
            .padding(.horizontal, 10)
            .foregroundStyle(.white)
            .padding(.bottom, 40)
    }
}

struct subscriptionPlan: View {
    
    let color: Color
    let title: String
    let price: Int
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill(color)
                .cornerRadius(10)
                .frame(width: .infinity, height: 150)
                .overlay(
                    VStack {
                        Text(title)
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text("$\(price)")
                        Text("per month")
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
            )
        }
    }
}

#Preview {
    Sandbox()
}
