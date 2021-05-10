//
//  NewComponentsListView.swift
//  Shared
//
//  Created by Rafal Padberg on 07/05/2021.
//

import SwiftUI

struct NewComponentsListView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("New Views")) {
                    NavigationLink(destination: TextEditorView()) { Text("TextEditor") }
                    NavigationLink(destination: ProgressViewView()) { Text("ProgressView") }
                    NavigationLink(destination: ProgressSpinnerView()) { Text("ProgressSpinner") }
                    NavigationLink(destination: MapView()) { Text("Map") }
                    NavigationLink(destination: LinkView()) { Text("Link") }
                    NavigationLink(destination: ColorPickerView()) { Text("ColorPicker") }
                    NavigationLink(destination: LabelView()) { Text("Label") }
                    NavigationLink(destination: VideoPlayerView()) { Text("VideoPlayer") }
                    NavigationLink(destination: SignInWithAppleButtonView()) { Text("SignInWithApple") }
                    NavigationLink(destination: ToolbarView()) { Text("Toolbars") }
                    // SpriteKit
                    // SceneKit
                    // Widget
//                    NavigationLink(destination: DisclosureGroupView()) { Text("DisclosureGroup") }
                }
                
                Section(header: Text("New View Modifiers")) {
                    NavigationLink(destination: OnChangeModifierView()) { Text("OnChange()") }
                    NavigationLink(destination: PageTabViewStyleView()) { Text("PageTabViewStyle()") }
                    NavigationLink(destination: RedactedModifierView()) { Text("Redacted()") }
                    NavigationLink(destination: AppStoreOverlayView()) { Text("AppStoreOverlay()") }
                }
                
                Section(header: Text("Updated Views")) {
                    NavigationLink(destination: ScrollViewPositionView()) { Text("ScrollView position") }
                }
            }
            .listStyle(GroupedListStyle())
//            .listStyle(SidebarListStyle())
//            .listStyle(InsetListStyle())
            .navigationBarTitle("New Components", displayMode: .inline)
        }
    }
}








struct NewComponentsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewComponentsListView()
    }
}
