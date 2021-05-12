//
//  NewViewsSectionView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct NewViewsSectionView: View {
    var body: some View {
//        Section(header: Text("New Views")) {
            NavigationLink(destination: TextEditorView()) { Text("TextEditor") }
            NavigationLink(destination: ProgressViewView()) { Text("ProgressView") }
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
//        }
    }
}

struct NewViewsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        NewViewsSectionView()
    }
}
