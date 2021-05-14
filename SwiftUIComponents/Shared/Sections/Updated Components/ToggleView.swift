//
//  ToggleView.swift
//  SwiftUIComponents
//
//  Created by Rafal Padberg on 13/05/2021.
//

import SwiftUI

struct ToggleView: View {
    @State private var isOn1: Bool = false
    @State private var isOn2: Bool = false
    @State private var isOn3: Bool = false
    
    var body: some View {
        VStack {
            Toggle("Default", isOn: $isOn1)
            
            Toggle("AccentColor", isOn: $isOn2)
                .toggleStyle(SwitchToggleStyle(tint: Color.accentColor))
            
            Toggle("Yellow", isOn: $isOn3)
                .toggleStyle(SwitchToggleStyle(tint: Color.yellow))
        }
        .padding()
        .navTitle("Toggle")
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
