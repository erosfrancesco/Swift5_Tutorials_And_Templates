//
//  GhibliSpecieElement.swift
//  ghibliSpecies
//
//  Created by Eros Reale on 05/03/2020.
//  Copyright © 2020 Eros Reale. All rights reserved.
//

import SwiftUI

// MARK: - Model
struct GhibliSpecie: Identifiable, Decodable {
    var id: String
    var name: String
    var classification: String
    var eye_colors: String
    var hair_colors: String
    var people: [String]
    var films: [String]
    var url: String
}

// MARK: - Component
struct GhibliSpecieElement: View {
    @State var data: GhibliSpecie
    
    var spacing: CGFloat = 8
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                self.header()
                self.subTitleLabel()
                self.infoTable()
            }
            .modifier(GhibliSpecieElementStyling(size: geometry.size, spacing: self.spacing))
        }
    }
    
    // MARK: - Childs
    func header() -> some View {
        return HStack {
            Text("\(data.name)")
                .font(.title)
                .bold()
                .modifier(GhibliSpecieElementHeaderStyling())
        }
        .padding([.leading, .top], 18)
        
    }
    
    func subTitleLabel() -> some View {
        Text("\(data.classification)")
        .bold()
        .padding(.leading, 18)
        .modifier(GhibliSpecieElementSubTitleStyling())
    }
    
    func infoTable() -> some View {
        HStack {
            VStack {
                Text("Eye colors")
                    .bold()
                Text("\(data.eye_colors)")
            }
            
            VStack {
                Text("Hair colors")
                    .bold()
                Text("\(data.hair_colors)")
            }
        }
        .padding()
    }
}

// MARK: - Preview
struct GhibliSpecieElement_Previews: PreviewProvider {
    static var previews: some View {
        let data = GhibliSpecie(id: "af3910a6-429f-4c74-9ad5-dfe1c4aa04f2",
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
        
        return GhibliSpecieElement(data: data)
    }
}

