//
//  CarouselTabViewStyleView.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafal Padberg on 13/05/2021.
//

import SwiftUI

struct CarouselTabViewStyleView: View {
    private let colors = [Color.red, .green, .blue]
    
    var body: some View {
        Group {
            #if os(watchOS)
            TabView {
                ForEach(0 ..< 3) { index in
                    Text("TabView \(index)")
                        .font(.title)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(colors[index])
                }
            }
            .tabViewStyle(CarouselTabViewStyle())
            #endif
        }
        .navTitle("TabView-CarouselStyle")
    }
}

struct CarouselTabViewStyleView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabViewStyleView()
    }
}
