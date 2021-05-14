//
//  ToolbarView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct ToolbarView: View {
    @State var isPresented = false
    @State var value: CGFloat = 12.0
    @State var isOn = true
    
    var body: some View {
        VStack {
            Text("Toolbars")
                .font(.system(size: value, weight: isOn ? .bold : .regular))
                .padding()
            
            Button("Modal") {
                isPresented.toggle()
            }
        }
        .toolbar {
            ToolbarItem(placement: .automatic) {
                Button(action: { print(".automatic or .primaryAction") }) {
                    Image(systemName: "pencil.tip")
                }
            }
            ToolbarItem(placement: .cancellationAction) {
                Button(action: { print(".cancellationAction") }) {
                    Image(systemName: "delete.left")
                }
            }
            #if !os(watchOS)
            ToolbarItem(placement: .principal) {
                HStack(spacing: 10) {
                    Slider(
                        value: $value,
                        in: 12...42,
                        minimumValueLabel:
                            Text("A").font(.system(size: 12)),
                        maximumValueLabel:
                            Text("A").font(.system(size: 20))
                    ) {
                        Text("Font Size")
                    }
                    .frame(width: 150)
                    
                    Toggle(isOn: $isOn) {
                        Image(systemName: "bold")
                    }
                }
            }
            #endif
            #if os(iOS)
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { print(".navigationBarLeading") }) {
                    Image(systemName: "square.and.pencil")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: { print(".navigationBarTrailing") }) {
                    Image(systemName: "lasso")
                }
            }
            ToolbarItem(placement: .bottomBar) {
                Button(action: { print(".bottomBar") }) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            #endif
        }
        .sheet(isPresented: $isPresented) {
            NavigationView {
                VStack {
                    Spacer()
                    
                    Text("Presented")
                        .frame(width: 500, height: 300) // for macOS, it doesn't not break anything in other OS's
                    
                    Spacer()
                }
                .navigationTitle("Modal")
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button("Auto") {
                            isPresented = false
                        }
                    }
                    ToolbarItem(placement: .primaryAction) {
                        Button("primaryAction") {
                            isPresented = false
                        }
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Close") {
                            isPresented = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Confirm") {
                            isPresented = false
                        }
                    }
                }
            }
            .padding()
        }
        .padding()
        .navTitle(".toolbar")
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}
