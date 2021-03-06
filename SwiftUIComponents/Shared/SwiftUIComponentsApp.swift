//
//  SwiftUIComponentsApp.swift
//  Shared
//
//  Created by Rafal Padberg on 07/05/2021.
//

import SwiftUI

@main
struct SwiftUIComponentsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                SwiftUIComponents()
            }
            .navigationTitle("Swift UI 2.0 Components")
        }
    }
}
