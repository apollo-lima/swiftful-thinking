//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 10/05/2024.
//

import SwiftUI

struct ColorsBootcamp: View {
    // create a variable, then open Color(#colorLiteral()) then just either add this to the Color or copy to get the RGB
    var colour = Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))
    
    // For custom colors in light and dark mode you have to add a custom color in the assets
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 50)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
