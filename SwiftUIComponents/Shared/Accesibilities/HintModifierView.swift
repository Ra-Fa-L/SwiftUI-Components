//
//  HintModifierView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct HintModifierView: View {
    @State var isOn = false
    @State var sliderValue = 3.0

    var body: some View {
        VStack {
            Text("Dummy Text")
                .help("Record new progress entry")
            Image(systemName: "applelogo")
                .help("Jabłko")

            Toggle("Hallo", isOn: $isOn)
                .padding()
                .help("Toggle")
            
            Button(action: {}, label: { Text("➡️✉️") })

            Button(action: {}, label: { Text("➡️✉️") })
                        .accessibility(label: Text("Send"))
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Label("Progress", systemImage: "book.circle")
                }
                .help("Record new progress entry")
            }
        }
    }
}

struct HintModifierView_Previews: PreviewProvider {
    static var previews: some View {
        HintModifierView()
    }
}
