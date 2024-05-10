import SwiftUI

struct ShapesBootcamp: View {
    
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.red)
//            .foregroundColor(.green)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(Color.red, lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: CGLineCap.butt, dash: [30]))
            .trim(from: 0.4, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
//            .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 100, alignment: .leading)
    }
}

#Preview {
    ShapesBootcamp()
}
