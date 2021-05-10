//
//  GaugeView.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct GaugeView: View {
    var body: some View {
        Gauge(value: 16.0, in: 10...88) {
            
        } currentValueLabel: {
            Text("16")
        } minimumValueLabel: {
            Text("3")
        } maximumValueLabel: {
            Text("66")
        }
        .gaugeStyle(CircularGaugeStyle())
    }
}

struct GaugeView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView()
    }
}
