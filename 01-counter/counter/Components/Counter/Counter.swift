//
//  Counter.swift
//  reactiveSwift
//
//  Created by Eros Reale on 04/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//
import SwiftUI
import Combine

struct CounterView: View {
    // MARK: - Component State
    @State var counter :Int = 0

    // MARK: - Component Wrapper
    var body: some View {
        HStack() {
            decrementCount
            displayCount
            incrementCount
        }
        .padding()
    }
    
    // MARK: - Component Childs
    var incrementCount: some View {
        CustomButton(action: { self.counter += 1 }, label: "+")
    }
    var decrementCount: some View {
        CustomButton(action: { self.counter -= 1 }, label: "-")
    }
    var displayCount: some View {
        Text("Counter: \(counter)")
            .modifier(CustomTextStyling())
    }
}

// MARK: - Preview
struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(counter: Int.random(in: 0...10))
    }
}
