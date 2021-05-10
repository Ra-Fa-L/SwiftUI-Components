//
//  ProgressViewView.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct ProgressViewView: View {
    var body: some View {
        ProgressView(value: 0.2) {
            Image(systemName: "checkmark.square.fill")
                .renderingMode(.template)
                .foregroundColor(.yellow)
//            ProgressView(value: 0.2)
//                .progressViewStyle(CircularProgressViewStyle(tint: .green))
        }
        .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                radius: 4.0, x: 1.0, y: 2.0)
        .frame(width: 200, height: 200)
        .progressViewStyle(CircularProgressViewStyle(tint: .green))
        
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewView()
    }
}
