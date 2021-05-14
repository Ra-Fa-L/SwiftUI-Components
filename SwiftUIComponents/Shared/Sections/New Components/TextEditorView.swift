//
//  TextEditorView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

// Available: iOS, macOS

import SwiftUI

struct TextEditorView: View {
    @State private var text: String = "Enter text ..."
    
    var body: some View {
        VStack {
            Spacer()
            
            TextEditor(text: $text)
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
                .background(Color.gray) // Won't work
                .colorMultiply(Color.gray)
                .frame(height: 100)
                .padding(12)
                .border(Color.black)
                .background(Color.gray)
                .padding(.horizontal, 40)
            
            Spacer()
        }
        .onTapGesture {
            self.hideKeyboard()
        }
        .padding()
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
