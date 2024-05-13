//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 12/05/2024.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
//        ZStack {
//            // background
//            Color.yellow
//                .ignoresSafeArea()
//            
//            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            }
//        }
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)

                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(20)
                }
            }
        }
        .background(Color.red)
    }
}

#Preview {
    SafeAreaBootcamp()
}
