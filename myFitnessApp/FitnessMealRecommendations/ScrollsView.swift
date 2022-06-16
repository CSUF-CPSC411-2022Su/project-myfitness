//
//  ScrollsView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/13/22.
//

import SwiftUI

struct ScrollsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                ForEach(recipes, id: \.title) { recipe in RecipeCard(recipe: recipe)
                        .shadow(radius: 20)
                        .padding()
                }
            }
        }
    }
}
