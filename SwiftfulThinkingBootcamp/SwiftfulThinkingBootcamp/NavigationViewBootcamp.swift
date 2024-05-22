//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 20/05/2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello world!") {
                    myOtherScreen()
                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .toolbar(.hidden)
            .navigationBarItems(leading: HStack {
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            },
                                trailing: NavigationLink(destination: {
                myOtherScreen()
            }, label: {
                Image(systemName: "gear")
            })
                                    .accentColor(.red)
            )
        }
    }
}

struct myOtherScreen: View {
    // to dismiss a view
    @Environment(\.dismiss) var dismissScreen

    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen")
                .toolbar(.hidden)
            
            VStack {
                
                Button("BACK BUTTON") {
                    dismissScreen()
                }
                
                NavigationLink("Click Here") {
                    Text("Third screen")
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
