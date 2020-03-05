//
//  Gradients.swift
//  gradients
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct Gradients {
    static func rainbow() -> some View {
        let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red])
        return AngularGradient(gradient: colors, center: .center)
    }

    static func linear(_ colors: [Color]) -> some View {
        let colors = Gradient(colors: colors)
        return LinearGradient(gradient: colors, startPoint: .top, endPoint: .center)
    }

    static func circular(_ colors: [Color], size: CGFloat) -> some View {
        let colors = Gradient(colors: colors)
        return RadialGradient(gradient: colors, center: .center, startRadius: 0, endRadius: size / 2)
    }
}

