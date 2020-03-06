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
                .modifier(AppStyling(darkMode: false))
                .modifier(BigText())
                .padding()
            Text("'Sup, Dark Mode!")
                .modifier(AppStyling(darkMode: true))
                .modifier(BigText())
                .padding()
            Text("'Sup, Rainbow!")
                .modifier(Rainbow())
                .modifier(BigText())
                .padding()
            Text("(Expect a lot more greetings...)")
                .padding()
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
