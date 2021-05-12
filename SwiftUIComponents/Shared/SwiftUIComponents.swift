//
//  SwiftUIComponents.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 12/05/2021.
//

import SwiftUI

struct SwiftUIComponents: View {
    var body: some View {
            List {
                NewViewsSection()

//                NewModifiersSectionView()
//
//                UpdatedViewsSectionView()
//
//                PropertyWrappersSectionView()
            }
            .navTitle("Swift UI 2.02 Components")
//            .listStyle(PlainListStyle())
//            .listStyle(GroupedListStyle())
//            .listStyle(InsetGroupedListStyle())
            .listStyle(SidebarListStyle())
    }
}

struct SwiftUIComponents_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIComponents()
    }
}
