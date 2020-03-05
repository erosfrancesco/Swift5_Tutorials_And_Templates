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
            .modifier(CustomButtonStyling(size: size))
    }
    
    // MARK: - Childs
    var textLabel :some View {
        Text(label)
            .font(.title)
            .foregroundColor(.white)
   }
}


// MARK: - Preview
struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomButton(label: "+")
//                .environment(\.colorScheme, .dark)
        }
    }
}
