//
//  ComponentStyling.swift
//  counter
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct CustomButtonStyling: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(width: size, height: size, alignment: .center)
            .background(Color.accentColor)
            .cornerRadius(size / 2)
            .shadow(color: .black, radius: 2)
    }
}


struct CustomTextStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.accentColor)
            .padding()
            // doesn't work apparently.
            // No shadow on text
            // .shadow(color: .black, radius: 1)
    }
}
