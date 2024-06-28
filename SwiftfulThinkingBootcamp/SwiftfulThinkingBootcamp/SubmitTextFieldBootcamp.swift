//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 28/06/24.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var text: String = ""
    var body: some View {
        
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console!")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console!")
                }
            
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console!")
                }
        }
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
