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
            Image("music-album")
                .redacted(reason: .placeholder)
        }
    }
}

struct RedactedModifierView_Previews: PreviewProvider {
    static var previews: some View {
        RedactedModifierView()
    }
}
