//
//  DatePickerView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()

    @State var selectedDate = Date()

    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }

    var body: some View {
        VStack {
//            Form {
//                Section {
//                    DatePicker(
//                        selection: $date,
//                        displayedComponents: .date,
//                        label: { Text("Due Date") }
//                    )
//                }
//            }
//            .frame(height: 200)
//
//            DatePicker(
//                selection: $selectedDate,
//                in: dateClosedRange,
//                displayedComponents: [.hourAndMinute, .date],
//                label: { Text("Due Date") }
//            )

            DatePicker("Default",
                selection: $selectedDate,
                in: Date()...,
                displayedComponents: [.date])
                .datePickerStyle(DefaultDatePickerStyle())

            DatePicker("Compact",
                selection: $selectedDate,
                in: Date()...,
                displayedComponents: [.date])
                .datePickerStyle(CompactDatePickerStyle())

            DatePicker("GraphicalDatePickerStyle",
                selection: $selectedDate,
                in: Date()...,
                displayedComponents: [.date])
                .datePickerStyle(GraphicalDatePickerStyle())

            #if !os(macOS)
            DatePicker("WheelDatePickerStyle",
                selection: $selectedDate,
                in: Date()...,
                displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
            #else
            DatePicker("FieldDatePickerStyle",
                selection: $selectedDate,
                in: Date()...,
                displayedComponents: [.date])
                .datePickerStyle(FieldDatePickerStyle())

            DatePicker("StepperFieldDatePickerStyle",
                selection: $selectedDate,
                in: Date()...,
                displayedComponents: [.date])
                .datePickerStyle(StepperFieldDatePickerStyle())
            #endif

        }
        .padding()
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
