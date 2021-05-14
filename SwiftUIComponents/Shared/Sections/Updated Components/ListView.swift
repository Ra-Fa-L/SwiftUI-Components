//
//  ListView.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI

struct ListView: View {
    @State var listStyleSelection: Int = 0

    var body: some View {
        VStack(spacing: 0) {
            #if os(watchOS)
            Picker(selection: $listStyleSelection, label:
                    Text("ListStyles: ")) {
                getSegmentedControlData()
            }
            .frame(height: 40)
            .padding(0)
            #else
            Picker(selection: $listStyleSelection, label:
                    Text("ListStyles: ")) {
                getSegmentedControlData()
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            #endif

            if (listStyleSelection == 0) {
                DummyListItems(name: "Plain")
                    .listStyle(PlainListStyle())
            }
            #if os(iOS) || os(macOS)
            if (listStyleSelection == 1) {
                DummyListItems(name: "Inset")
                    .listStyle(InsetListStyle())
            }
            if (listStyleSelection == 2) {
                DummyListItems(name: "Sidebar")
                    .listStyle(SidebarListStyle())
            }
            #endif
            #if os(iOS)
            if (listStyleSelection == 3) {
                DummyListItems(name: "InsetGrouped")
                    .listStyle(InsetGroupedListStyle())
            }
            if (listStyleSelection == 4) {
                DummyListItems(name: "Grouped")
                    .listStyle(GroupedListStyle())
            }
            #elseif os(watchOS)
            if (listStyleSelection == 5) {
                DummyListItems(name: "Elliptical")
                    .listStyle(EllipticalListStyle())
            }
            if (listStyleSelection == 6) {
                DummyListItems(name: "Carousel")
                    .listStyle(CarouselListStyle())
            }
            #endif
        }
        .navTitle("List")
    }
    
    private func getSegmentedControlData() -> some View {
        return Group {
            Text("Plain").tag(0)
            
            #if os(iOS) || os(macOS)
            Text("Inset").tag(1)
            Text("Sidebar").tag(2)
            #endif
            #if os(iOS)
            Text("InsetGrouped").tag(3)
            Text("Grouped").tag(4)
            
            #elseif os(watchOS)
            Text("Elliptical").tag(5)
            Text("Carousel").tag(6)
            #endif
        }
    }
}

struct DummyListItems: View {
    let name: String

    var body: some View {
        List {
            Text("\(name)Style()")
            Section(header: Text("Section 1")) {
                Text("Section 1 item 1")
                Text("Section 1 item 2")
                Text("Section 1 item 3")
            }
            Section(header: Text("Section 2")) {
                Text("Section 2 item 1")
                Text("Section 2 item 2")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
