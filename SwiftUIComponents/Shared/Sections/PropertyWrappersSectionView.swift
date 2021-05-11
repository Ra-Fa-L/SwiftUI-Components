//
//  PropertyWrappersSectionView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct PropertyWrappersSectionView: View {
    var body: some View {
        Section(header: Text("Property Wrappers")) {
            NavigationLink(destination: ScaledMetricView()) { Text("@Scaled Metric") }
        }
    }
}

struct PropertyWrappersSectionView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrappersSectionView()
    }
}
