//
//  NewViewsSection.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 12/05/2021.
//

import SwiftUI

struct NewViewsSection: View {
    var body: some View {
        Section(header: Text("New Views")) {
            NavigationLink(destination: TextEditorView()) { Text("TextEditor") }
//            NavigationLink(destination: ProgressViewView()) { Text("ProgressView") }
//            NavigationLink(destination: MapView()) { Text("Map") }
//            NavigationLink(destination: LinkView()) { Text("Link") }
//            NavigationLink(destination: ColorPickerView()) { Text("ColorPicker") }
//            NavigationLink(destination: LabelView()) { Text("Label") }
//            NavigationLink(destination: VideoPlayerView()) { Text("VideoPlayer") }
//            NavigationLink(destination: SignInWithAppleButtonView()) { Text("SignInWithApple") }
//            NavigationLink(destination: ToolbarView()) { Text("Toolbars") }
        }
    }
}

struct NewViewsSection_Previews: PreviewProvider {
    static var previews: some View {
        NewViewsSection()
    }
}
