//
//  NewModifiersSectionView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct NewModifiersSectionView: View {
    var body: some View {
        Section(header: Text("New View Modifiers")) {
            NavigationLink(destination: OnChangeModifierView()) { Text("OnChange()") }
            NavigationLink(destination: PageTabViewStyleView()) { Text("PageTabViewStyle()") }
            NavigationLink(destination: RedactedModifierView()) { Text("Redacted()") }
            NavigationLink(destination: AppStoreOverlayView()) { Text("AppStoreOverlay()") }
            NavigationLink(destination: HintModifierView()) { Text("HintModifier") }
        }
    }
}

struct NewModifiersSectionView_Previews: PreviewProvider {
    static var previews: some View {
        NewModifiersSectionView()
    }
}
