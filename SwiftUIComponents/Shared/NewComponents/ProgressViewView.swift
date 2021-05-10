//
//  ProgressViewView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI
import AuthenticationServices

struct ProgressViewView: View {
    // Doesn't have to be a @State
    @State private var progress = 0.0
        
    var body: some View {
        VStack {
            Button(action: { increaseProgress() }) { Text("Add") }
                .padding(.vertical, 30)
            
            ProgressView("Progress Bar", value: progress, total: 100.0)
        }
        .padding()
        .navigationBarTitle("ProgressView")
    }
    
    private func increaseProgress() {
        progress += (10.0)
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewView()
    }
}
