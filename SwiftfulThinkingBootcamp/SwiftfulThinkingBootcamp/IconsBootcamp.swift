//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 10/05/2024.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "heart.square.fill")
            .renderingMode(.original)
            .resizable() // to make it fill the frame
            .aspectRatio(contentMode: .fit)
            .scaledToFit() // instead of using aspectRatio - other option - scaledTo...
//            .font(.caption)
//            .font(.system(size: 200))
//            .foregroundColor(Color("CustomColor"))
            .frame(width: 300, height: 300)
            .clipped() // if using scaledToFill do cut the sides
    }
}

#Preview {
    IconsBootcamp()
}
