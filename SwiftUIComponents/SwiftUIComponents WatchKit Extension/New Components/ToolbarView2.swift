//
//  ToolbarView2.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct ToolbarView2: View {
    var body: some View {
        List {
            Label("Some text", systemImage: "applelogo")
            Label("Some text", systemImage: "04.circle")
            Label("Some text", systemImage: "guitars.fill")
            Label("Some text", systemImage: "grid")
        }
        .navigationTitle("Toolbar")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Label("Some action", systemImage: "grid")
                }
            }
        }
    }
}

struct ToolbarView2_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView2()
    }
}
