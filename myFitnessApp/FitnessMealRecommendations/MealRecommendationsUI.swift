//
//  MealRecommendationsUI.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/13/22.
//

import SwiftUI

struct MealRecommendationsUI: View {
    @State private var search: String = ""

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 14) {
                Text("Recipes 🥙")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding()

                Text("Great job! What would you like to cook today?")
                    .font(.body)
                    .fontWeight(.bold)

                // Different views

                SearchView()

                RecipeView()

                ScrollsView()

                DrinkView()

                DrinkScrollsView()

                //FavoriteRecipes()
            }
            .padding()
        }.background(
            Image("green")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 450, height: 850))
    }
}

struct MealRecommendationsUI_Previews: PreviewProvider {
    static var previews: some View {
        MealRecommendationsUI()
            .previewInterfaceOrientation(.portrait)
    }
}
