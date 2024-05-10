//
//  ImagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 11/05/2024.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("malzahar.jpeg")
//            .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/) // for pictures with no backgrounds, transparent background images
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .clipped()
//            .cornerRadius(150)
            .clipShape(Circle())
        
    }
}

#Preview {
    ImagesBootcamp()
}
