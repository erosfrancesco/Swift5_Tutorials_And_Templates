//
//  ContentView.swift
//  counter
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CounterView(counter: .random(in: 0...10))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
