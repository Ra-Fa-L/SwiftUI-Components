//
//  LabelView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack {
            Label("Text", systemImage: "42.circle")
                .font(Font.system(size: 40))
//            Label("Text", image: image asset)
            Label(
                title: { Text("label") },
                icon: { Rectangle().frame(width: 10, height: 10) }
            )
            .font(.system(size: 40))
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
