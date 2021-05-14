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
        Group {
            #if os(macOS)
            TabView {
                ForEach(0 ..< 3) { index in
                    Text("TabView \(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(colors[index])
                }
            }
            #else
            TabView {
                ForEach(0 ..< 3) { index in
                    Text("TabView \(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(colors[index])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            #endif
        }
        .navTitle("TabView-PageStyle")
    }
}

struct PageTabViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewStyleView()
    }
}
