//
//  ScrollViewPositionView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct ScrollViewPositionView: View {
    var body: some View {
        ScrollView(.horizontal) {
            ScrollViewReader { scrollView in
                VStack(alignment: .leading) {
                    
                    HStack(alignment: .firstTextBaseline) {
                        Text("Last")
                            .font(.title)
                            .onTapGesture {
                                scrollView.scrollTo(14)
                            }
                    }
                    .padding(.vertical, 30)

                    
                    HStack {
                        ForEach(0 ..< 14) { index in
                            Text("\(index)")
                                .frame(width: 120, height: 240)
                                .background(Color.green)
                                .id(index) // Has to be added
                        }
                        
                        Text("First")
                            .frame(width: 120, height: 240)
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
        .frame(height: 300)
        .padding()
    }
}

struct ScrollViewPositionView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewPositionView()
    }
}
