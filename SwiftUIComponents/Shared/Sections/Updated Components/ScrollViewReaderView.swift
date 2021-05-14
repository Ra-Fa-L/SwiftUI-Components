//
//  ScrollViewReaderView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct ScrollViewReaderView: View {
    @State private var index: Int = 0
    
    var body: some View {
        ScrollView(.horizontal) {
            Group {
                ScrollViewReader { scrollView in
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Last Items")
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(24)
                                .padding(.vertical, 10)
                                .onTapGesture {
                                    scrollView.scrollTo(14)
                                }
                        }
                        
                        HStack {
                            ForEach(0 ..< 14) { index in
                                Text("Item \(index)")
                                    .frame(width: width, height: height)
                                    .background(Color.green)
                                    .id(index) // Has to be added
                            }
                            Text("Back to First")
                                .frame(width: width, height: height)
                                .background(Color.yellow)
                                .id(14)
                                .onTapGesture {
                                    withAnimation {
                                        scrollView.scrollTo(0)
                                    }
                                }
                        }
                    }
                    
                }
            }
        }
        .navTitle("ScrollView")
        .padding()
    }
    
    private var width: CGFloat {
        Helper.shared.chooseForOs(array: [120, 120, 60])
    }
    
    private var height: CGFloat {
        Helper.shared.chooseForOs(array: [240, 240, 100])
    }
}

struct ScrollViewReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderView()
    }
}
