//
//  Helper.swift
//  SwiftUIComponents
//
//  Created by Rafał Padberg on 10/05/2021.
//

import SwiftUI
#if os(iOS)
import UIKit
#endif

class Helper {
    static let shared = Helper()

    func hideKeyboard() {
        #if os(iOS)
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        #endif
    }
    
     func scaleForOS(_ number: CGFloat) -> CGFloat {
        #if os(iOS)
        return number
        #elseif os(macOS)
        return number * 1.4
        #elseif os(watchOS)
        return number * 0.5
        #endif
    }
    
    func printAllFontsUsed() {
        #if os(iOS)
        for fontFamily in UIFont.familyNames {
            for fontName in UIFont.fontNames(forFamilyName: fontFamily) {
                print("\(fontName)")
            }
        }
        #elseif os(macOS)
        let fontFamilies = NSFontManager.shared.availableFontFamilies.sorted()
        for family in fontFamilies {
            print(family)
            let familyFonts = NSFontManager.shared.availableMembers(ofFontFamily: family)
            if let fonts = familyFonts {
                for font in fonts {
                    print("\t\(font)")
                }
            }
        }
        #endif
    }
    
    /// [iOS, macOS, watchOS]
    func chooseForOs(array: [CGFloat]) -> CGFloat {
        if array.count == 3 {
            #if os(iOS)
            return array[0]
            #elseif os(macOS)
            return array[1]
            #else
            return array[2]
            #endif
        } else {
            return 0
        }
    }
}
