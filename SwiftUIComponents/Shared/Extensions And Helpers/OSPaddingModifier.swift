//
//  OSPaddingModifier.swift
//  SwiftUIComponents
//
//  Created by Rafal Padberg on 12/05/2021.
//

import SwiftUI

struct OSPaddingModifier: ViewModifier {
    let edges: Edge.Set = .all
    let length: CGFloat = 0.0
    
    func body(content: Content) -> some View {
        content
            .padding(edges, Helper.shared.scaleForOS(length))
    }
}
