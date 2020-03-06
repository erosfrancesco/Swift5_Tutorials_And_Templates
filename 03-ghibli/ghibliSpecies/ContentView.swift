//
//  ContentView.swift
//  ghibliSpecies
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI
import Combine

var data: AnyCancellable?

struct ContentView: View {
    var body: some View {
        GhibliSpeciesList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
