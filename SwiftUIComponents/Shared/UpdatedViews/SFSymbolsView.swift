//
//  SFSymbolsView.swift
//  SwiftUIComponents (iOS)
//
//  Created by Rafal Padberg on 10/05/2021.
//

import SwiftUI

struct SFSymbolsView: View {
    var body: some View {
        List {
            Image(systemName: "location.fill")
                .imageScale(.large)
            Text("\(Image(systemName: "location")) Location")
            Label("Title", systemImage: "shield.fill")
            
            HStack {
                Image(systemName: "folder.badge.plus")
                    .renderingMode(.template)
                Image(systemName: "folder.badge.plus")
                    .renderingMode(.template)
                    .foregroundColor(Color.blue)
                Image(systemName: "folder.badge.plus")
                    .renderingMode(.original)
            }
            .font(.system(size: 40))
        }
    }
}

struct SFSymbolsView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsView()
    }
}
