//
//  SwipeActionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 20/06/2024.
//

import SwiftUI

struct SwipeActionsBootcamp: View {
    @State var fruits: [String] = [
    "apple", "orange", "banana", "peach"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)

                    }
            }
//            .onDelete(perform: delete)
        }
    }
        
        func delete(indexSet: IndexSet) {
            
        }
}

#Preview {
    SwipeActionsBootcamp()
}
