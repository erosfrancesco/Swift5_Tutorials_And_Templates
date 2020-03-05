//
//  AppStyling.swift
//  styling
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct AppStyling: ViewModifier {
    var darkMode: Bool = false
    
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
    func body(content: Content) -> some View {
        content
            .font(.title)
    }
}

struct Rainbow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Gradients.rainbow())
            .font(.title)
    }
}
