//
//  AppStyling.swift
//  styling
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct AppStyling: ViewModifier {
    // MARK: - Parameters
    var darkMode: Bool = false
    
    // MARK: - Main
    func body(content: Content) -> some View {
        let paddedContent = content.padding()
        
        if darkMode {
            return paddedContent
            .background(Color.black)
            .foregroundColor(.white)
        } else {
            return paddedContent
            .background(Color.white)
            .foregroundColor(.black)
        }
    }
}


struct BigText: ViewModifier {
    // MARK: - Main
    func body(content: Content) -> some View {
        content
            .font(.title)
    }
}
