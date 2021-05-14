//
//  NavTitleModifier.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct NavTitle: ViewModifier {
    let text: String

    func body(content: Content) -> some View {
        #if os(iOS)
        content
            .navigationBarTitle(text, displayMode: .inline)
        #endif
    }
}

extension View {
    func navTitle(_ text: String) -> some View {
        #if os(iOS)
        self.modifier(NavTitle(text: text))
        #else
        self.navigationTitle(text)
        #endif
    }
}
