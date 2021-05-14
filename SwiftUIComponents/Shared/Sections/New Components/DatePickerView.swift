//
//  DatePickerView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct DatePickerView: View {
    @State private var selectedIndex: Int = 0
    @State private var selectedDate = Date()
    
    private var startDate = Date()
    private var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        VStack {
            SegmentedControlView(selectedItem: $selectedIndex, items: getItems())
            
            switch selectedIndex{
            case 0:
                DatePicker("No restriction", selection: $selectedDate)
                    .datePickerStyle(CompactDatePickerStyle())
                
                DatePicker("From startDate", selection: $selectedDate, in: startDate..., displayedComponents: [.date])
                    .datePickerStyle(DefaultDatePickerStyle())
                
                DatePicker("Till startDate", selection: $selectedDate, in: ...Date(), displayedComponents: [.date])
                    .datePickerStyle(DefaultDatePickerStyle())
                
                DatePicker(selection: $selectedDate, in: dateClosedRange, displayedComponents: [.hourAndMinute, .date]) { Text("Closed range") }
            case 1:
                DatePicker("GraphicalDatePickerStyle", selection: $selectedDate, in: startDate...)
                    .datePickerStyle(GraphicalDatePickerStyle())
            case 2:
                #if os(iOS)
                DatePicker("", selection: $selectedDate, in: startDate...)
                    .datePickerStyle(WheelDatePickerStyle())
                #else
                
                DatePicker("FieldDatePickerStyle", selection: $selectedDate, in: Date()...)
                    .datePickerStyle(FieldDatePickerStyle())
                #endif
            default: Group {}
            }
            
            Spacer()
        }
        .padding()
        .navTitle("DatePicker")
    }
    
    private func getItems() -> [String] {
        #if os(iOS)
        // Default = CompactDatePickerStyle
        return ["Default", "Graphical", "Wheel"]
        #else
        // Default = StepperFieldDatePickerStyle
        return ["Default", "Graphical", "Field"]
        #endif
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
