//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Apollo Lima on 28/05/2024.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showConfirmationDialog: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    // ActionSheet is now ConfirmationDialog
    
    enum ActionSheetOptions {
        case isMypost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost
                    showConfirmationDialog.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .confirmationDialog("This is the title",
                            isPresented: $showConfirmationDialog,
                            titleVisibility: .visible) {
            getButtons()
        } message: {
            Text("This is the message")
        }
    }
}

func getButtons() -> some View {
    return Group {
        Button("Change Profile") {}
        Button("Log Out", role: .destructive) {}
        Button("Cancel", role: .cancel) {}
    }
}

#Preview {
    ActionsheetBootcamp()
}
