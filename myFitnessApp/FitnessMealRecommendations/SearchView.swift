//
//  SearchView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/13/22.
//

import SwiftUI

// @Breif: Contains the search bar view.
struct SearchView: View {
    @State var search: String = ""
    let list = [recipes]
    
    var body: some View {
        ZStack {
            Rectangle()
               .foregroundColor(Color("Gray"))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search for recipes ..", text: $search)
                    .searchable(text: $search)
            }
            .foregroundColor(.black)
            .padding(.leading, 13)
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()
    }
    
}
