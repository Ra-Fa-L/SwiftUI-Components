//
//  HelpModifierView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct HelpModifierView: View {
    @State var isOn = false
    @State var sliderValue = 3.0

    var body: some View {
        VStack(spacing: 20) {
            Text("Dummy Text")
                .help("Record new progress entry")
            
            Image(systemName: "applelogo")
                .help("Apple")
            
            Toggle("Hallo", isOn: $isOn)
                .padding()
                .help("Toggle")
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Label("Progress", systemImage: "book.circle")
                }
                .help("Record new progress entry")
            }
        }
        .navTitle(".help")
    }
}

struct HelpModifierView_Previews: PreviewProvider {
    static var previews: some View {
        HelpModifierView()
    }
}
