//
//  TextEditorView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct TextEditorView: View {
    // Text stored in a @State / @Binding
    @State private var text: String = "Enter text"
    
    var body: some View {
        VStack {
            Spacer()
            
            TextEditor(text: $text)
                .frame(width: 200, height: 120, alignment: .center)
                .padding()
                .border(Color.red)
            
            Spacer()
        }
        .onTapGesture {
            self.hideKeyboard()
        }
        .navTitle("TextEditor")
    }
    
    // No easy way to dismiss TextEditor
    private func hideKeyboard() {
        Helper.shared.hideKeyboard()
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
