//
//  LinkView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct LinkView: View {
    private let url = URL(string: "https://www.google.com/")!
    
    var body: some View {
        VStack {
            Link("Web Link", destination: url)
        }
        .padding()
        .navTitle("Link")
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
