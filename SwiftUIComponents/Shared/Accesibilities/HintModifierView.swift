//
//  HintModifierView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct HintModifierView: View {
    var body: some View {
        VStack {
            Text("Dummy Text")
                .help("Record new progress entry")
        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {}) {
                    Label("Progress", systemImage: "book.circle")
                }
                .help("Record new progress entry")
            }
        }
    }
}

struct HintModifierView_Previews: PreviewProvider {
    static var previews: some View {
        HintModifierView()
    }
}
