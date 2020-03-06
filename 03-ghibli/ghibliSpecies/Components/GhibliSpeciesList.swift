//
//  GhibliSpeciesList.swift
//  ghibliSpecies
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI
import Combine


// MARK: - Component
struct GhibliSpeciesList: View {
    // MARK: - Properties
    @State var data: [GhibliSpecie] = []
    @State var error: APIError?
    @State var hasFinished: Bool = false
    
    // MARK: - View
    var body: some View {
        Group {
            if error != nil {
                GhibliSpeciesError(error: error!)
            } else {
                if hasFinished {
                    List(data) { row in
                        GhibliSpecieElement(data: row)
                    }.environment(\.defaultMinListRowHeight, 150)
                } else {
                    Text("FETCHING...")
                        .font(.headline)
                        .bold()
                        .foregroundColor(.green)
                        .onAppear(perform: fetch)
                }
            }
        }
    }
    
    // MARK: - Events
    func fetch() {
        getGhibliSpecies { error, res in
            self.hasFinished = true
            
            if let e = error {
                // error management
                self.error = e
                return
            }
            
            if let data = res {
                self.data = data
            }
        }
    }
}


// MARK: - Preview
struct GhibliSpeciesList_Previews: PreviewProvider {
    static var previews: some View {
        let el = GhibliSpecie(id: "af3910a6-429f-4c74-9ad5-dfe1c4aa04f2",
            name: "Human",
            classification: "Mammal",
            eye_colors: "Black, Blue, Brown, Blue, Grey, Green, Hazel",
            hair_colors: "Black, Blonde, Brown, Grey, White",
            people: [
                "https://ghibliapi.herokuapp.com/people/ba924631-068e-4436-b6de-f3283fa848f0",
                "https://ghibliapi.herokuapp.com/people/e9356bb5-4d4a-4c93-aadc-c83e514bffe3",
            ],
            films: [
                "https://ghibliapi.herokuapp.com/films/2baf70d1-42bb-4437-b551-e5fed5a87abe",
            ],
            url: "https://ghibliapi.herokuapp.com/species/af3910a6-429f-4c74-9ad5-dfe1c4aa04f2"
        )
        let data = [el, el]
        
        // switch comment to test error cases
        let e :APIError? = nil
//        let e = APIError(type: .noData)
        let a = GhibliSpeciesList(data: data, error: e)
        a.hasFinished = true
        return a
    }
}
