//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 28/05/2024.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.headline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(Color(backgroundColor).clipShape(RoundedRectangle(cornerRadius: 30)))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
                
            })
        })
        
//        var colour = Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    }
}

#Preview {
    ContextMenuBootcamp()
}
