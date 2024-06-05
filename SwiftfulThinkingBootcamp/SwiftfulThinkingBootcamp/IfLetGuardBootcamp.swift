//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 05/06/2024.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    // MARK: PROPERTIES
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
  
    // MARK: BODY
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practicing safe coding!")
                
                // If displayText is not equal to nil, create a new variable and add it to text
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                // Do not use exclamation mark ever to force unwrap values
                // Text(displayText!)
                
                if isLoading {
                    ProgressView()
                }
                
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    // MARK: FUNCTIONS
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User ID is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error: There is no User ID!"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error: There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User ID is: \(userID)"
            isLoading = false
        }
    }
}


// MARK: PREVIEW
#Preview {
    IfLetGuardBootcamp()
}
