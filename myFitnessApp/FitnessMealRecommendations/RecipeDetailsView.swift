//
//  RecipeDetailsView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/19/22.
//

import SwiftUI

struct RecipeDetailsView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // @Breif: Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    
                    // @Breif: Rating
                    RecipeRating(recipe: recipe)
                    
                    // @Breif: Cook Time
                    cookingView(recipe: recipe)
                    
                    // @Breif: Ingrediants
                    Text("Ingrediants")
                        .font(.system(.title3, design: .serif))
                        .fontWeight(.semibold)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingrediants, id: \.self) {
                            item in
                            VStack {
                                Text(item)
                                    .font(.system(.body, design: .serif))
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                    
                    // @Breif: Instructions
                    Text("Instructions")
                        .font(.system(.title3, design: .serif))
                        .fontWeight(.semibold)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.instructions, id: \.self) {
                            items in
                            VStack {
                                Text(items)
                                    .lineLimit(nil)
                                    .font(.system(.body, design: .serif))
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsView(recipe: recipes[0])
    }
}
