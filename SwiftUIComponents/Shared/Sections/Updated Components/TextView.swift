//
//  TextView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct TextView: View {
    private let date: Date = Date()
    private let date2: Date = Date().addingTimeInterval(2176)
    private let date3: Date = Date().addingTimeInterval(4 * 24 * 3600 + 8901)
    
    var body: some View {
        List {
            Section(header: Text("Static Text")) {
                TextGroupView(text: "String Converted") { Text("\(date)") }
                TextGroupView(text: ".date") { Text(date, style: .date) }
                TextGroupView(text: "short date range") { Text(date...date2) }
                TextGroupView(text: "long date range") { Text(date...date3) }
            }
            Section(header: Text("Updating Text")) {
                TextGroupView(text: ".time") { Text(date, style: .time) }
                TextGroupView(text: ".offset") { Text(date, style: .offset) }
                TextGroupView(text: ".relative") { Text(date, style: .relative) }
                TextGroupView(text: ".timer") { Text(date, style: .timer) }
            }
        }
        .navTitle("Text")
    }
}

struct TextGroupView<Label>: View where Label: View {
    let text: String
    let label: () -> Label
    
    var body: some View {
        VStack(spacing: 1) {
            HStack {
                Text(text + ":")
                    .font(.system(size: 13, weight: .light, design: .monospaced))
                
                Spacer()
            }
            HStack {
                label()
                    .font(.system(size: 18, weight: .medium))
                
                Spacer()
            }
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
