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
            SectionView(title: "Recommended Recipes 👨‍🍳")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {}
            }
        }
    }
}

struct DrinkView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            SectionView(title: "Recommended Drinks 🧊")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {}
            }
        }
    }
}
