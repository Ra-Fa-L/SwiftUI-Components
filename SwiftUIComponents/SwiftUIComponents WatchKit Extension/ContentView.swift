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
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
