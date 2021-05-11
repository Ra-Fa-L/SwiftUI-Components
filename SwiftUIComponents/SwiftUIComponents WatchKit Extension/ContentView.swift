//
//  ContentView.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("New Views")) {
                    NavigationLink(destination: GaugeView()) { Text("GaugeView") }
                    NavigationLink(destination: ProgressViewView()) { Text("ProgressView") }
                    NavigationLink(destination: ToolbarView2()) { Text("Toolbar") }
                    NavigationLink(destination: ToolbarView()) { Text("Toolbar2") }
                    NavigationLink(destination: SignInWithAppleButtonView()) { Text("SignInWith Apple button") }
                    NavigationLink(destination: MapView()) { Text("Map") }
                    NavigationLink(destination: PageTabViewStyleView()) { Text("PageTabViewStyle") }
                    NavigationLink(destination: RedactedModifierView()) { Text(".redacted") }
                    NavigationLink(destination: ScrollViewPositionView()) { Text("ScrollView") }
                }
            }
            .listStyle(DefaultListStyle())
            .listItemTint(.accentColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
