//
//  GaugeView.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI
import ClockKit

struct GaugeView: View {
    var body: some View {
        Group {
            Gauge(value: 9.0, in: 3...12) {

            } currentValueLabel: {
                Text("9")
            } minimumValueLabel: {
                Text("3")
            } maximumValueLabel: {
                Text("12")
            }
            .gaugeStyle(CircularGaugeStyle())
        }
    }
}

struct GaugeView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView()
    }
}
