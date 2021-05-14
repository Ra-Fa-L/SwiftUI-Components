//
//  NewViewModifiersSection.swift
//  SwiftUIComponents
//
//  Created by Rafal Padberg on 13/05/2021.
//

import SwiftUI

struct NewViewModifiersSection: View {
    var body: some View {
        Section(header: Text("New View Modifiers")) {
            NavigationLink(destination: OnChangeModifierView()) { Text(".onChange") }
            #if !os(watchOS)
            NavigationLink(destination: ContextMenuView()) { Text(".contexMenu") }
            #endif
            NavigationLink(destination: RedactedModifierView()) { Text(".redacted") }
            #if os(iOS)
            NavigationLink(destination: AppStoreOverlayView()) { Text(".appStoreOverlay") }
            #endif
            NavigationLink(destination: ToolbarView()) { Text(".toolbar") }
        }
    }
}

struct NewModifiersSection_Previews: PreviewProvider {
    static var previews: some View {
        NewViewModifiersSection()
    }
}
