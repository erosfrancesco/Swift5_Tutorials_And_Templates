//
//  GhibliSpeciesError.swift
//  ghibliSpecies
//
//  Created by Eros Reale on 06/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

struct GhibliSpeciesError: View {
    @State var error: APIError
    
    var body: some View {
        Text("\(error.description)")
            .font(.title)
            .foregroundColor(.pink)
    }
}

struct GhibliSpeciesError_Previews: PreviewProvider {
    static var previews: some View {
        GhibliSpeciesError(error: APIError(type: .noData) )
    }
}
