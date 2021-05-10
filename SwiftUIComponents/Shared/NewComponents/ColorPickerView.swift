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
            
            ColorPicker("Title", selection: $color, supportsOpacity: true)
            
            Spacer()
        }
        .padding()
        .background(color)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
