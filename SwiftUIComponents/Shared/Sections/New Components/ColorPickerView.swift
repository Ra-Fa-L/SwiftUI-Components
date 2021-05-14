//
//  ColorPickerView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var color = Color.white
    
    var body: some View {
        VStack {
            Spacer()
            
            ColorPicker("Set the background color", selection: $color, supportsOpacity: false)
                .padding()
            
            Spacer()
        }
        .background(color)
        .ignoresSafeArea(.container, edges: .bottom)
        .navTitle("ColorPicker")
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
