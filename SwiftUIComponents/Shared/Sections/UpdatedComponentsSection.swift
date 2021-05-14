//
//  UpdatedComponentsSection.swift
//  SwiftUIComponents
//
//  Created by Rafal Padberg on 13/05/2021.
//

import SwiftUI

struct UpdatedComponentsSection: View {
    var body: some View {
        Section(header: Text("Updated Components")) {
            NavigationLink(destination: ScrollViewReaderView()) { DoubleTextView(["ScrollView", ".scroll()"]) }
            NavigationLink(destination: PageTabViewStyleView()) { DoubleTextView(["TabView", "PageTabViewStyle()"]) }
            
            #if os(watchOS)
            NavigationLink(destination: CarouselTabViewStyleView()) { DoubleTextView(["TabView", "CarouselTabViewStyle()"]) }
            #endif
            
            NavigationLink(destination: ToggleView()) { DoubleTextView(["Toggle", "tint"]) }
            NavigationLink(destination: TextView()) { DoubleTextView(["Text", "date"]) }
            NavigationLink(destination: SFSymbolsView()) { DoubleTextView(["SFSymbols", "multicolor"]) }
            NavigationLink(destination: ListView()) { DoubleTextView(["List", "Style"])}
        }
    }
}

struct DoubleTextView: View {
    let textArray: [String]
    
    var body: some View {
        HStack {
            Text(textArray[0])
            Text(textArray[1])
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
    
    init(_ array: [String]) {
        textArray = array
    }
}

struct UpdatedComponentsSection_Previews: PreviewProvider {
    static var previews: some View {
        UpdatedComponentsSection()
    }
}
