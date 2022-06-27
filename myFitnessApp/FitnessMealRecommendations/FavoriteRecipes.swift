//
//  FavoriteRecipes.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/13/22.
//

import SwiftUI

struct FavoriteRecipes: View {
    var body: some View {
        HStack {
            Text("Favorites ❤️")
                .font(.title2)
                .fontWeight(.bold)

            Spacer()

            Text("See all")
                .foregroundColor(Color("PrimaryColor"))
        }
    }
}
