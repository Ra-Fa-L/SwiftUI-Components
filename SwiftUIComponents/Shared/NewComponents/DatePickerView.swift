//
//  DatePickerView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            DatePicker("Title", selection: $date, displayedComponents: .date)
                .frame(width: 200, height: 100, alignment: .center)
        }
        .padding()
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
