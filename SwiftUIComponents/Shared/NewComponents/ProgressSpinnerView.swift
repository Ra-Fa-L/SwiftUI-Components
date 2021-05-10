//
//  ProgressSpinnerView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI

struct ProgressSpinnerView: View {
        
    var body: some View {
        VStack {
            ProgressView("Spinner spinning...")
        }
        .padding()
        .navigationBarTitle("ProgressSpinner")
    }
}

struct ProgressSpinnerView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressSpinnerView()
    }
}
