//
//  OnChangeModifierView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct OnChangeModifierView: View {
    @State private var text = "Enter Your Text"
    @State private var index: Double = 3.0
    
    @State private var current = 32.0
    @State private var minValue = 11.0
    @State private var maxValue = 99.0
    
    var body: some View {
        VStack {
            Spacer()
            
            #if os(iOS) || os(macOS)
            TextEditor(text: $text)
                .frame(width: 200, height: 120, alignment: .center)
                .padding()
                .border(Color.red)
                .onTapGesture {
                    hideKeyboard()
                }
            #else
            Slider(value: $index, in: 0.0 ... 14.0, step: 1.0) { }
            #endif
            
            Spacer()
        }
        .onChange(of: text) { newValue in
            print("Text changed: \(newValue)!")
        }
        .onChange(of: index) { value in
            print("Index changed to: \(index)")
        }
        .navTitle(".onChange")
    }
    
    private func hideKeyboard() {
        Helper.shared.hideKeyboard()
    }
}

struct OnChangeModifierView_Previews: PreviewProvider {
    static var previews: some View {
        OnChangeModifierView()
    }
}
