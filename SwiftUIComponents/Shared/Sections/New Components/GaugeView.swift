//
//  GaugeView.swift
//  SwiftUIComponents WatchKit Extension
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI
import ClockKit

struct GaugeView: View {
    @State private var current = 32.0
    @State private var minValue = 11.0
    @State private var maxValue = 99.0
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    
    var body: some View {
        VStack(spacing: 16) {
            Gauge(value: current, in: minValue...maxValue) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            } currentValueLabel: {
                Text("\(Int(current)) sad as")
                    .foregroundColor(Color.red)
            } minimumValueLabel: {
                Text("\(Int(minValue))")
                    .foregroundColor(Color.green)
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
                    .foregroundColor(Color.red)
            }
            .gaugeStyle(LinearGaugeStyle(tint: gradient))
            
            Gauge(value: current, in: minValue...maxValue) {
                
            } currentValueLabel: {
                Text("\(Int(current))")
                    .foregroundColor(Color.green)
            } minimumValueLabel: {
                Text("\(Int(minValue))")
                    .foregroundColor(Color.green)
            } maximumValueLabel: {
                Text("\(Int(maxValue))")
                    .foregroundColor(Color.red)
            }
            .gaugeStyle(CircularGaugeStyle(tint: gradient))
            
            Slider(value: $current, in: minValue ... maxValue, step: 5.0) {}
        }
        .padding()
        .navTitle("Gauge")
    }
}

struct GaugeView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView()
    }
}
