//
//  SwiftUIComponents.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 12/05/2021.
//

import SwiftUI

struct SwiftUIComponents: View {
    var body: some View {
        Group {
            #if os(watchOS)
            AllSectionsList()
                .listStyle(EllipticalListStyle())
            #else
            AllSectionsList()
                .navTitle("Swift UI 2.0 Components")
//                .listStyle(PlainListStyle())
//                .listStyle(GroupedListStyle())
//                .listStyle(InsetGroupedListStyle())
                .listStyle(SidebarListStyle())
            #endif
        }
        .navTitle("Swift UI 2.0 Components")
    }
}

struct AllSectionsList: View {
    var body: some View {
        List {
            NewComponentsSection()
            UpdatedComponentsSection()
            NewViewModifiersSection()
            AccessibilitiesSection()
        }
    }
}

struct SwiftUIComponents_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIComponents()
    }
}
