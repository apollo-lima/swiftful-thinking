//
//  OnAppearBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 05/06/2024.
//

import SwiftUI

struct OnAppearBootcamp: View {
    // MARK: PROPERTIES
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    // MARK: BODY
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new text!"
                }
                })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}


// MARK: PREVIEW
#Preview {
    OnAppearBootcamp()
}
