//
//  ProgressViewView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

// Available: iOS, macOS, watchOS, tvOS

import SwiftUI

struct ProgressViewView: View {
    // Doesn't have to be a @State
    @State private var progress = 10.0
    @State private var progress2 = 0.3
    @State private var selectedIndex = 0
    private let items = [
        "Progress Bar", "ActivityIndicator", "Circular", "Custom"
    ]
        
    var body: some View {
        VStack {
            Button(action: { increaseProgress() }) {
                Text("Increase Progress")
                    .font(.footnote)
            }
                .frame(height: Helper.shared.scaleForOS(20))
                .padding(8)
                .background(Color(red: 0.88, green: 0.88, blue: 0.88))
                .cornerRadius(8)
            
            SegmentedControlView(selectedItem: $selectedIndex, items: items)
            
            Group {
                switch selectedIndex {
                case 0:
                    ProgressView("Progress Bar", value: progress, total: 100.0)
                case 1:
                    ProgressView("Downloading...")
                case 2:
                    HStack {
                        ProgressView("Circular Bar", value: progress, total: 100.0)
                            .progressViewStyle(CircularProgressViewStyle())
                        
                        #if os(watchOS)
                        ProgressView(value: progress2) {
                            ZStack {
                                Image(systemName: "checkmark.square.fill")
                                    .renderingMode(.template)
                                    .foregroundColor(.yellow)
                                ProgressView(value: progress2)
                                    .progressViewStyle(CircularProgressViewStyle(tint: .green))
                            }
                        }
                        .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                                radius: 4.0, x: 1.0, y: 2.0)
                        .progressViewStyle(CircularProgressViewStyle(tint: .green))
                        #endif
                    }
                case 3:
                    VStack {
                        ProgressView(value: progress, total: 100.0)
                        ProgressView("Custom Progress", value: progress2)
                    }
                    .progressViewStyle(ShadowProgressViewStyle())
                default: Group {}
                }
            }
            .frame(height: 80)
        }
        .padding()
        .navTitle("ProgressView")
    }
    
    private func increaseProgress() {
        progress = (progress + 10.0).truncatingRemainder(dividingBy: 100.0)
        progress2 = (progress2 + 0.15).truncatingRemainder(dividingBy: 1.0)
    }
}

struct ShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .foregroundColor(Color.gray)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6, opacity: 0.8), radius: 4.0, x: 1.0, y: 2.0)
    }
}

struct ProgressViewView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewView()
    }
}
