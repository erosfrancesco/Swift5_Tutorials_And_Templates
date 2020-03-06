//
//  ComponentsStyling.swift
//  ghibliSpecies
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI


// MARK: - GhibliSpecieElement
struct GhibliSpecieElementStyling: ViewModifier {
    
    var radius: CGFloat = 4
    var size: CGSize
    var spacing: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: size.width - spacing * 2, height: nil, alignment: .topLeading)
            .background(Color.white)
            .foregroundColor(.black)
            .cornerRadius(spacing)
                .shadow(color: Color.black.opacity(0.5), radius: radius, x: 1, y: 1)
    }
}


// MARK: - GhibliSpecieElement header
struct GhibliSpecieElementHeaderStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: nil, alignment: .leading)
    }
}

struct GhibliSpecieElementSubTitleStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
           .font(.subheadline)
           .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: nil, alignment: .leading)
           .shadow(radius: 0)
    }
}
