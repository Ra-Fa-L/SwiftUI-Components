//
//  NewComponentsSection.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 12/05/2021.
//

import SwiftUI

struct NewComponentsSection: View {
    var body: some View {
        Section(header: Text("New Components")) {
            
            #if os(iOS) || os(macOS)
            NavigationLink(destination: TextEditorView()) { Text("TextEditor") }
            NavigationLink(destination: ColorPickerView()) { Text("ColorPicker") }
            NavigationLink(destination: DatePickerView()) { Text("DatePicker") }
            #endif
            
            NavigationLink(destination: ProgressViewView()) { Text("ProgressView") }
            NavigationLink(destination: LinkView()) { Text("Link") }
            NavigationLink(destination: LabelView()) { Text("Label") }
            NavigationLink(destination: SignInWithAppleButtonView()) { Text("SignInWithApple") }
            NavigationLink(destination: MapView()) { Text("Map") }
            NavigationLink(destination: VideoPlayerView()) { Text("VideoPlayer") }
            
            #if os(watchOS)
            NavigationLink(destination: GaugeView()) { Text("Gauge") }
            #endif
        }
    }
}

struct NewViewsSection_Previews: PreviewProvider {
    static var previews: some View {
        NewComponentsSection()
    }
}
