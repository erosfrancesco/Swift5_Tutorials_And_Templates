//
//  CustomButton.swift
//  reactiveSwift
//
//  Created by Eros Reale on 04/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    // MARK: - Properties
    var action: () -> Void = {}
    var label: String = ""
    var size: CGFloat = 50
    
    
    // MARK: - Component Wrapper
    var body: some View {
        Button(action: action, label: {textLabel})
            .frame(width: size, height: size, alignment: .center)
            .background(Color.accentColor)
            .cornerRadius(size / 2)
            .shadow(color: .black, radius: 2)
    }
    
    // MARK: - Childs
    var textLabel :some View {
        Text(label)
            .foregroundColor(.white)
            .font(.title)
//            .shadow(color: .black, radius: 1) // doesn't show any shadows
   }
}


// MARK: - Preview
struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomButton(label: "+")
                .environment(\.colorScheme, .dark)
        }
    }
}
