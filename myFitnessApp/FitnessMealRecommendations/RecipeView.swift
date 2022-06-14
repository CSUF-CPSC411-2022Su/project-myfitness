//
//  RecipeView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/13/22.
//

import SwiftUI

struct RecipeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(title: "Todays Recommended Recipes 👨‍🍳")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    RecipeCard()
                }
            }
        }
    }
}

struct RecipeCard: View {
    var body: some View {
        Text("")
    }
}
