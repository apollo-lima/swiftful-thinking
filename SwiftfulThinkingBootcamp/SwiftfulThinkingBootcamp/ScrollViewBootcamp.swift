//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 12/05/2024.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        //        ScrollView(.horizontal, showsIndicators: false) {
        //            HStack {
        //                ForEach(0..<50) { index in
        //                    Rectangle()
        //                        .fill(Color.blue)
        //                        .frame(width: 300, height: 300)
        //                        .overlay(
        //                    Text("\(index)")
        //                    )
        //                }
        //            }
        //        }
        
        ScrollView() {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
