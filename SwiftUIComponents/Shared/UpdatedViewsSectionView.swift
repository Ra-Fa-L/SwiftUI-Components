//
//  UpdatedViewsSectionView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct UpdatedViewsSectionView: View {
    var body: some View {
        Section(header: Text("Updated Views")) {
            NavigationLink(destination: ScrollViewPositionView()) { Text("ScrollView position") }
            NavigationLink(destination: TextView()) { Text("Text") }
            NavigationLink(destination: SFSymbolsView()) { Text("SFSymbols") }
            NavigationLink(destination: ListView()) { Text("List") }
        }
    }
}

struct UpdatedViewsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        UpdatedViewsSectionView()
    }
}
