//
//  SwiftUIComponentsApp.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

@main
struct SwiftUIComponentsApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                SwiftUIComponents()
            }
        }
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
