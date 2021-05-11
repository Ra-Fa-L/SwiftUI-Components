//
//  ToolbarView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

enum ViewMode: CaseIterable {
    case details
    case notes
}

struct ToolbarView: View {
    @State var presented = false
    @State var value = 12.0
    @State var isOn = true
    @State var viewmode: ViewMode = .details

    var body: some View {
        VStack {
            Text("Toolbars")
                .padding()

            Button("Modal") {
                presented.toggle()
            }
        }
//        .navigationTitle("Scren title")
        .toolbar {
            #if !os(watchOS)
            ToolbarItem(placement: .principal) {
                Slider(
                    value: $value,
                    in: 8...120,
                    minimumValueLabel:
                        Text("A").font(.system(size: 8)),
                    maximumValueLabel:
                        Text("A").font(.system(size: 16))
                ) {
                    Text("Font Size")
                }
                .frame(width: 150)
                Toggle(isOn: $isOn) {
                    Image(systemName: "bold")
                }
            }

            ToolbarItem(placement: .principal) {
                Picker("View", selection: $viewmode) {
                    Text("Details").tag(ViewMode.details)
                    Text("Notes").tag(ViewMode.notes)
                }.pickerStyle(SegmentedPickerStyle())
            }
            #endif

            #if os(iOS)
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up.on.square.fill")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "square.and.pencil")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "lasso")
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
            #endif

            #if os(macOS)
            ToolbarItem(placement: .navigation) {
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up.on.square.fill")
                }
            }
            ToolbarItem(placement: .status) {
                Button(action: {}) {
                    Image(systemName: "square.and.pencil")
                }
            }
            ToolbarItem(placement: .principal) {
                Button(action: {}) {
                    Image(systemName: "lasso")
                }
            }
            #endif
            ToolbarItem(placement: .automatic) {
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
        .sheet(isPresented: $presented) {
            NavigationView {
                VStack {
                    Text("Presented")
                }
                .navigationTitle("Modal")
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Close") {
                            presented = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Confirm") {
                            presented = false
                        }
                    }
                }
            }
        }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
