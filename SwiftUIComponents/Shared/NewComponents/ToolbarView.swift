//
//  ToolbarView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct ToolbarView: View {
    @State var presented = false
        
        var body: some View {
            VStack {
                Text("Toolbars")
                    .padding()
                
                Button("Modal") {
                    presented.toggle()
                }
            }
            .navigationBarTitle("Scren title", displayMode: .inline)
            .toolbar {
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
            }
            .sheet(isPresented: $presented) {
                NavigationView {
                    VStack {
                        Text("Presented")
                    }
                    .navigationBarTitle("Modal")
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
