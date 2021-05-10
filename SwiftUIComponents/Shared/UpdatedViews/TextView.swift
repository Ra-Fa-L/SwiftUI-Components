//
//  TextView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct TextView: View {
    private let date: Date = Date()
    private let date2: Date = Date().addingTimeInterval(1234)
    
    var body: some View {
        List {
            Text("\(date)")
                .textCase(.uppercase)
            Text(date, style: .date)
            Text(date, style: .time)
            Text(date, style: .offset)
            Text(date, style: .relative)
            Text(date, style: .timer)
            Text(date...date2)
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
