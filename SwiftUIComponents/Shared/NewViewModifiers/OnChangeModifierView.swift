//
//  OnChangeModifierView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct OnChangeModifierView: View {
    @State private var text = "Enter Your Text"
    
    var body: some View {
        VStack {
            Spacer()
            
            TextEditor(text: $text)
                .frame(width: 200, height: 120, alignment: .center)
                .padding()
                .border(Color.red)
            
            Spacer()
        }
        .onChange(of: text) { newValue in
            print("\(newValue)!")
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
    
    private func hideKeyboard() {
        UIApplication.shared.hideKeyboard()
    }
}

struct OnChangeModifierView_Previews: PreviewProvider {
    static var previews: some View {
        OnChangeModifierView()
    }
}
