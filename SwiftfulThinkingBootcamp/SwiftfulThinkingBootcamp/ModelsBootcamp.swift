//
//  ModelsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 06/06/2024.
//

import SwiftUI
// MARK: STRUCTS
struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

// MARK: VIEWS
struct ModelsBootcamp: View {
    
    @State var users: [UserModel] = [
        //    "Nick", "Apollo", "Conor", "Chris"
        UserModel(displayName: "Nick", userName: "SwiftfulThinking", followerCount: 20, isVerified: true),
        UserModel(displayName: "Apollo", userName: "apollolima", followerCount: 210, isVerified: true),
        UserModel(displayName: "Conor", userName: "conortheq", followerCount: 230, isVerified: true),
        UserModel(displayName: "Chris", userName: "christophercook", followerCount: 120, isVerified: false)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
            .listStyle(InsetListStyle())
        }
    }
}

#Preview {
    ModelsBootcamp()
}
