//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 22/06/2024.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        
//        List {
//            Text("Hello World!")
//                .badge("New Items")
//            Text("Hello World!")
//            Text("Hello World!")
//            Text("Hello World!")
//        }
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Likes")
                }
                .badge("1 New")
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Messages")
                }
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Bugs")
                }
        }
    }
}

#Preview {
    BadgesBootcamp()
}
