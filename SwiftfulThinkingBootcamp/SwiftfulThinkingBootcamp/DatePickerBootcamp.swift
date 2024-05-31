//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by SAD Lima on 31/05/2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date() // instead of ?? maybe use oonly !
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short // medium, long
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            //        DatePicker("Select a date", selection: $selectedDate)
            //        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                    
                    DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                        .tint(.red)
                        .datePickerStyle(
                            CompactDatePickerStyle()
            //                GraphicalDatePickerStyle()
            //                WheelPickerStyle()
                        )
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
