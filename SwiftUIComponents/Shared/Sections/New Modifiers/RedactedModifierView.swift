//
//  RedactedModifierView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct RedactedModifierView: View {
    var body: some View {
        VStack {
            HStack {
                Text("CardNumber: ")
                Text("123241234123214")
                    .redacted(reason: .placeholder)
            }
            .font(.footnote)
            .padding(.bottom, 20)
            
            Image("music-album")
                .resizable()
                .frame(width: 200, height: 200)
                .redacted(reason: .placeholder)
        }
        .padding()
        .navTitle(".redacted")
    }
}

struct RedactedModifierView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedModifierView()
    }
}
