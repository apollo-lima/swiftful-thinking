//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 09/06/2024.
//

import SwiftUI

struct ProfileView: View {
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("gender") var currentGender: String?
    @AppStorage("age") var currentAge: Int?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentAge ?? 0) years old!")
            Text("Their gender is \(currentGender ?? "Unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .onTapGesture {
                    signout()
                }
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
    }
    
    func signout() {
        currentUserName = nil
        currentAge = nil
        currentGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
