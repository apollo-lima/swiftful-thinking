//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 12/06/2024.
//

import SwiftUI

/*
 case empty -> No image is loaded.
 case success(Image) -> An image successfully loaded
 case failure(Error) -> An image failed to load with an error.
 */

struct AsyncImageBootcamp: View {
    let url = URL(string: "https://picsum.photos/300")
    
    var body: some View {
        AsyncImage(url: url) { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        } placeholder: {
            ProgressView()
        }

        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProfileView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
            
    }
}

#Preview {
    AsyncImageBootcamp()
}
