//
//  SignInWithAppleButtonView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 09/05/2021.
//

import SwiftUI
import AuthenticationServices

struct SignInWithAppleButtonView: View {
    var body: some View {
        VStack {
            SignInWithAppleButton { request in
                
            } onCompletion: { completion in
                
            }
            .cornerRadius(10)
            .frame(height: 40)
        }
        .padding()
        .navTitle("SignInWithApple")
    }
}

struct SignInWithAppleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleButtonView()
    }
}
