//
//  AppStoreOverlayView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI
import StoreKit

struct AppStoreOverlayView: View {
    @State private var showRecommended = false

        var body: some View {
            #if os(iOS)
            Button("Show Recommended App") {
                showRecommended.toggle()
            }
            .appStoreOverlay(isPresented: $showRecommended) {
                SKOverlay.AppConfiguration(appIdentifier: "1464144628", position: .bottom)
            }
            #endif
        }
}

struct AppStoreOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        AppStoreOverlayView()
    }
}
