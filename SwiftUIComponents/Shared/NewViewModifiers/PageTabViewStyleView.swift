//
//  PageTabViewStyleView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct PageTabViewStyleView: View {
    private let colors = [Color.red, .green, .blue]
    
    var body: some View {
        TabView {
            ForEach(0 ..< 3) { index in
                Text("TabView \(index)")
                    .font(.title)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(colors[index])
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageTabViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewStyleView()
    }
}
