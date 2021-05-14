//
//  DynamicTypeView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct DynamicTypeView: View {
    @ScaledMetric private var padding: CGFloat = 14.0
    @ScaledMetric(relativeTo: .largeTitle) var padding2: CGFloat = 14.0

    var body: some View {
        ScrollView {
            Text("Not Scalable:")
                .font(.system(size: 30))
            
            VStack {
                
                Text("Album name")
                    .font(.system(size: 24, weight: .heavy))
                
                Text("Footnote")
                    .font(.system(size: 24, weight: .light))
                    .foregroundColor(.white)
                
                Image(systemName: "shuffle")
                    .font(.system(size: 18))
                    .imageScale(.small)
                    .foregroundColor(.white)
            }
            .padding(10)
            .background(Color.blue)
            .cornerRadius(20)
            .padding(.bottom, 50)
            
            Text("Scalable:")
                .font(.largeTitle)
            
            VStack {
                
                Text("Album name")
                    .font(.system(size: 24, weight: .heavy))
                
                Text("Footnote")
                    .font(.custom("Lato-Hairline", size: 24))
                    .foregroundColor(.white)
                
                Text("Footnote")
                    .font(.custom("Lato-Hairline", size: 24, relativeTo: .largeTitle))
                    .foregroundColor(.white)
                
                Image(systemName: "shuffle")
                    .font(.headline)
                    .foregroundColor(.white)

            }
            .padding(padding)
            .background(Color.blue)
            .cornerRadius(20)
        }
        .navTitle("Dynamic Type")
    }
}

struct ScaledMetricView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicTypeView()
            .environment(\.sizeCategory, .extraSmall)
//            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
