import SwiftUI

struct FramesBootcamp: View {
    
    var body: some View {
        Text("Hello super hello world to you")
            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
            .background(Color.red)
    }
}

#Preview {
    FramesBootcamp()
}
