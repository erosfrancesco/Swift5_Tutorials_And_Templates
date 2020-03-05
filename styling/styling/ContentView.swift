//
//  ContentView.swift
//  styling
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Text("Hi, Styles!")
                .modifier(AppStyling(darkMode: true))
                .modifier(BigText())
            Text("'Sup, Dark Mode!")
                .modifier(AppStyling(darkMode: false))
                .modifier(BigText())
            Text("(Expect a lot more greetings...)")
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
