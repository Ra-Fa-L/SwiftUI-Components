//
//  NewComponentsListView.swift
//  Shared
//
//  Created by Rafal Padberg on 07/05/2021.
//

import SwiftUI

struct NewComponentsListView: View {
    @State var listStyleSelection: Int = 0

    var body: some View {
            List {
                NewViewsSectionView()
                NewModifiersSectionView()
                UpdatedViewsSectionView()
                PropertyWrappersSectionView()
            }
            .navTitle("Swift UI 2.02 Components")
//            .listStyle(PlainListStyle())
//            .listStyle(GroupedListStyle())
//            .listStyle(InsetGroupedListStyle())
            .listStyle(SidebarListStyle())
    }

    init() {
//        for fontFamily in UIFont.familyNames {
//            for fontName in UIFont.fontNames(forFamilyName: fontFamily) {
//                print("\(fontName)")
//            }
//        }


//        let fontFamilies = NSFontManager.shared.availableFontFamilies.sorted()
//              for family in fontFamilies {
//                  print(family)
//                  let familyFonts = NSFontManager.shared.availableMembers(ofFontFamily: family)
//                  if let fonts = familyFonts {
//                      for font in fonts {
//                        print("\t\(font)")
//                      }
//                  }
//              }
    }
}

struct NewComponentsListView_Previews: PreviewProvider {
    static var previews: some View {
        NewComponentsListView()
    }
}
