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
            .frame(width: 100, height: 30)
        }
    }
}

struct SignInWithAppleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleButtonView()
    }
}
