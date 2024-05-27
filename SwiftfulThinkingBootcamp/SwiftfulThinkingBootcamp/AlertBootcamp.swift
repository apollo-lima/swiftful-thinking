//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 27/05/2024.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "Error uploading video"
//                    alertMessage = "The video could not be upload"
                    showAlert.toggle()
                }
                
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Sucessfully uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
        })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("This was a sucess!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("There was an error"))
        default:
            return Alert(title:  Text("Error"))
        }
//        return Alert (
//        title: Text(alertTitle),
//        message: Text(alertMessage),
//        dismissButton: .default(Text("OK")))
        //            Alert(title: Text("There was an error"))
//        Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
