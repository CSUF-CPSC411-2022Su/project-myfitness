//
//  RecipeCard.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/15/22.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Spacer(minLength: 0)
                
                Image(recipe.image)
                
            }
                Text(recipe.title)
                    .font(.title2)
                    .foregroundColor(.black)
                
                HStack(spacing: 12) {
                    Label(title: {
                        Text(recipe.rating)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }) {
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(Color("orange"))
                    }
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(recipe.color.opacity(0.4))
                    .cornerRadius(5)
                    
                    Text(recipe.difficulty)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.vertical,5)
                        .padding(.horizontal,10)
                        .background(recipe.color.opacity(0.4))
                        .cornerRadius(5)
                }
                    
                    Text(recipe.information)
                        .foregroundColor(.gray)
        }
        .padding(.horizontal)
        .frame(width: UIScreen.main.bounds.width / 2)
        .background(recipe.color.opacity(0.2))
        .cornerRadius(25)
        .padding(.top,55)
    }
}
