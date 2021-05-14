//
//  AccessibilitiesSection.swift
//  SwiftUIComponents
//
//  Created by Rafal Padberg on 13/05/2021.
//

import SwiftUI

struct AccessibilitiesSection: View {
    var body: some View {
        Section(header: Text("Accessibilities")) {
            NavigationLink(destination: HelpModifierView()) { Text(".help modifier") }
            NavigationLink(destination: DynamicTypeView()) { Text("Dynamic Type") }
        }
    }
}

struct AccessibilitiesSection_Previews: PreviewProvider {
    static var previews: some View {
        AccessibilitiesSection()
    }
}
