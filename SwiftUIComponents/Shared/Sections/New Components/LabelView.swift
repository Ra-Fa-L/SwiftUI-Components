//
//  LabelView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct LabelView: View {
    @State private var selectedIndex: Int = 0
    private var items = [
        "SFSymbol", "Image", "Shape", "Complex"
    ]
    
    var body: some View {
        VStack {
            SegmentedControlView(selectedItem: $selectedIndex, items: items)
                .padding(.bottom, 10)
            
            Group {
                switch selectedIndex {
                case 0:
                    Label("Text", systemImage: "33.circle")
                        .font(Font.system(size: 40))
                case 1:
                    Label(title: { Text("Image and Text") }) { Image("netguru")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                    }
                case 2:
                    Label(title: { Text("label") }) {
                        Circle()
                            .frame(width: 18, height: 18)
                    }
                    .font(.system(size: 40))
                case 3:
                    Label {
                        Text("Joe Doe")
                            .font(.body)
                            .foregroundColor(.primary)
                        Text("Doctor")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    } icon: {
                        ZStack {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(width: 34, height: 34)
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 40, height: 40, alignment: .center)
                            Circle()
                                .fill(Color.yellow)
                                .frame(width: 36, height: 36, alignment: .center)
                                .overlay(Text("J.D."))
                        }
                    }
                default: Group {}
                }
            }
            .frame(height: 50)
        }
        .padding()
        .navTitle("Label")
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
