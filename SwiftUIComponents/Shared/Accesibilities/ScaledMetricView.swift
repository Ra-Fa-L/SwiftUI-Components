//
//  ScaledMetricView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct ScaledMetricView: View {
    @ScaledMetric private var padding: CGFloat = 10.0
    @ScaledMetric(relativeTo: .body) var padding2: CGFloat = 12.0

    var body: some View {
        VStack {
            VStack {
                Text("Album name")
                    .font(.system(size: 24, weight: .heavy))
                //                .font(.system(size: UIFontMetrics.default.scaledValue(for: 24), weight: .heavy))

//                    Text("Album name")
//                        .font(.system(size: UIFontMetrics.default.scaledValue(for: 24), weight: .heavy))

//                Text("Artist name")
//                    .font(.body)
//
//                Text("Footnote")
//                    .font(.custom("Lato-Hairline", size: 24))
                // Default scaling to .body
//
                Text("Footnote")
                    .font(.custom("Lato-Hairline", size: 24, relativeTo: .footnote))
                    .foregroundColor(.white)

//                Image(systemName: "shuffle")
//                    .font(.headline)
//                    .imageScale(.small)
//                    .foregroundColor(.white)
//
//                Image(systemName: "shuffle")
//                    .font(.custom("Lato-Hairline", size: 18))
//                    .imageScale(.small)
//                    .foregroundColor(.white)
            }
            .padding(10)
            .background(Color.blue)
            .cornerRadius(20)

            VStack {
                Text("Album name")
                    .font(.system(size: 24, weight: .heavy))
                //                .font(.system(size: UIFontMetrics.default.scaledValue(for: 24), weight: .heavy))

                    Text("Album name")
//                        .font(.system(size: UIFontMetrics.default.scaledValue(for: 24), weight: .heavy))

                Image(systemName: "shuffle")
                    .font(.custom("Lato-Hairline", size: 18))
                    .imageScale(.small)
                    .foregroundColor(.white)
            }
            .padding(padding)
            .background(Color.blue)
            .cornerRadius(20)
        }
    }
}

struct ScaledMetricView_Previews: PreviewProvider {
    static var previews: some View {
        ScaledMetricView()
    }
}
