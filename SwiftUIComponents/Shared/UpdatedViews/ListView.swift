//
//  ListView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct ListView: View {
    @Binding var listStyleSelection: Int

    var body: some View {
        VStack(spacing: 0) {
            Picker(selection: $listStyleSelection, label:
                    Text("ListStyles: ")) {
                // All Systems
                Text("Plain|Default").tag(0)
                Text("Sidebar").tag(1)

                #if os(iOS)
                Text("InsetGrouped").tag(2)
                Text("Grouped").tag(3)
                #endif
            }.pickerStyle(SegmentedPickerStyle())

            if (listStyleSelection == 0) {
                DummyListItems(name: "Plain or Default")
                    .listStyle(DefaultListStyle())
                    .listStyle(InsetListStyle()) // Simmilar and only iOS and macOS
                    .listStyle(PlainListStyle())
            }

            if (listStyleSelection == 1) {
                DummyListItems(name: "Sidebar")
                    .listStyle(SidebarListStyle())
            }

            #if os(iOS)
            if (listStyleSelection == 2) {
                DummyListItems(name: "InsetGrouped")
                    .listStyle(InsetGroupedListStyle())
            }

            if (listStyleSelection == 3) {
                DummyListItems(name: "Grouped")
                    .listStyle(GroupedListStyle())
            }
            #endif
        }
    }
}

struct DummyListItems: View {
    let name: String

    var body: some View {
        List {
            Text("\(name) style")
            Section(header: Text("Section 1")) {
                Text("Section 0 item 1")
                Text("Section 0 item 2")
            }
            Section(header: Text("Section 2")) {
                Text("Section 0 item 1")
                Text("Section 0 item 2")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(listStyleSelection: .constant(0))
    }
}
