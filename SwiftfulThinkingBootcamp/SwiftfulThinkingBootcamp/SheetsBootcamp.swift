//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 15/05/2024.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//            .sheet(isPresented: $showSheet, content: {
//                SecondScreen()
            // do not add conditional logic
//            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()
                // do not add conditional logic
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) var dismissScreen
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                dismissScreen()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.headline)
                    .padding(20)
            })
        }
    }
}

#Preview {
    SheetsBootcamp()
}
