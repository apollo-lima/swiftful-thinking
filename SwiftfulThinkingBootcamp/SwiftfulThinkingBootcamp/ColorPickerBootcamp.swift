//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 30/05/2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var boldNess: Bool = false
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            HStack {
                ColorPicker(selection: $backgroundColor, supportsOpacity: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/,
                            label: {
                    Text("Select a color")
                        .foregroundStyle(boldNess ? .white : backgroundColor)
                        .fontWeight(boldNess ? .bold : nil)
                        
                })
                .padding()
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .foregroundStyle(.white)
                .font(.headline)
            .padding(50)
                
                Spacer()
                
                Button(action: {
                    boldNess.toggle()
                }, label: {
                    Text("B")
                        .padding()
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .foregroundStyle(.white)
                        .font(.headline)
                        .padding(30)
                })
            }
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
