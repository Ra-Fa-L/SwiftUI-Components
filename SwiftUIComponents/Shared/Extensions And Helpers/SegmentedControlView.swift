//
//  SegmentedControlView.swift
//  SwiftUIComponents
//
//  Created by Rafal Padberg on 12/05/2021.
//

import SwiftUI

struct SegmentedControlView: View {
    @Binding var selectedItem: Int
    var items: [String] = []
    
    var body: some View {
        #if os(watchOS)
        SegmentedControlPicker(selectedItem: $selectedItem, items: items)
            .frame(height: 40)
        #else
        SegmentedControlPicker(selectedItem: $selectedItem, items: items)
            .padding()
            .pickerStyle(SegmentedPickerStyle())
        #endif
    }
}

struct SegmentedControlPicker: View {
    @Binding var selectedItem: Int
    var items: [String] = []
    var title: String = "SegmentedControl: "
    
    var body: some View {
        Picker(selection: $selectedItem, label:
                Text(title)) {
            ForEach(0 ..< items.count) { index in
                Text(items[index]).id(index)
                    .font(.system(size: 8))
            }
        }
    }
}

struct SegmentedControlView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlView(selectedItem: .constant(0), items: ["Item A", "Item B"])
    }
}
