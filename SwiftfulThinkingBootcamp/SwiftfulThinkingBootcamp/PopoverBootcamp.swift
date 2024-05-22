//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 15/05/2024.
//

// Sheets
// animations
// transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.spring()) {
                        showNewScreen.toggle()
                    }
                }
                .font(.largeTitle)
                
                Spacer()
            }
            // METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // METHOD 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    @Environment(\.dismiss) var dismissScreen
    @Binding var showNewScreen: Bool

    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button {
//                dismissScreen()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

#Preview {
    PopoverBootcamp()
//    NewScreen()
}
