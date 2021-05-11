//
//  ContextMenu.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct ContextMenu: View {
    var body: some View {
        VStack {
            Text("Options")
                .contextMenu {
                    Button {
                        print("Change country setting")
                    } label: {
                        Label("Choose Country", systemImage: "globe")
                    }

                    Button {
                        print("Enable geolocation")
                    } label: {
                        Label("Detect Location", systemImage: "location.circle")
                    }
                }
                .padding(.vertical, 40)

            Text("Card Suits")
                .contextMenu {
                    Button("♥️ - Hearts", action: {})
                    Button("♣️ - Clubs", action: {})
                    Button("♠️ - Spades", action: {})
                    Button("♦️ - Diamonds", action: {})
                }
        }
    }
}

struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
