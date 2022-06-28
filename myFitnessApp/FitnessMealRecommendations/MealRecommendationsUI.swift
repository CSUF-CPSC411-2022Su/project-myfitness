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
                Text("Recommendations")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding()
    
                Text("Great job on your workout today! 🏋️‍♂️ Here are some healthy recipes and drinks we love: ")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Spacer()
                Text("Recipes 🥙")
                    .font(.largeTitle)
                    .bold()

                // Different views

                //SearchView()

                ScrollsView()

               Text("Drinks 🧊")
                    .font(.largeTitle)
                    .bold()

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
