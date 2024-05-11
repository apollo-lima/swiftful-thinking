//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 11/05/2024.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStacks -> Vertical
    // HStacks -> Horizontal
    // ZStacks -> zIndex (back to front)
    var body: some View {
//        ZStack(alignment: .trailing, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//        })
        
        ZStack (alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack (alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100  )
                HStack (alignment: .bottom, spacing: 30) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
    }
}

#Preview {
    StacksBootcamp()
}
