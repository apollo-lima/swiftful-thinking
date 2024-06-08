//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 08/06/2024.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            
            // Two ways of unwrapping optionals
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button(action: {
                let name = "Emily"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
                
            }, label: {
                Text("Save".uppercased())
            })
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
