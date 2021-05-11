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


            ProgressView("Progress Bar", value: progress, total: 100.0)
                .progressViewStyle(CircularProgressViewStyle())

            VStack {
                ProgressView(value: 0.25)
                ProgressView(value: 0.75)
            }
            .progressViewStyle(DarkBlueShadowProgressViewStyle())


                VStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                }
                .padding()
                .navTitle("ProgressSpinner")
        }
        .padding()
        .navTitle("ProgressView")
    }
    
    private func increaseProgress() {
        progress += (10.0)
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                    radius: 4.0, x: 1.0, y: 2.0)
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewView()
    }
}
