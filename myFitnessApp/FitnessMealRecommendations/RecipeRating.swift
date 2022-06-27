//
//  RecipeRating.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/20/22.
//

import SwiftUI

struct RecipeRating: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1 ... (recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct DrinkRating: View {
    var drink: Drinks
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1 ... (drink.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

struct RecipeRating_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRating(recipe: recipes[0])
    }
}
