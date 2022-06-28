//
//  ScrollsView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/13/22.
//

import SwiftUI

struct ScrollsView: View {
    var healthy: [Recipe] = recipes
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 20) {
                ForEach(healthy) { recipe in RecipeCardView(recipe: recipe)
                }
            }
            .frame(maxWidth: 2000, maxHeight: 540)
            .padding(.horizontal)
            .shadow(radius: 5)
        }
    }
}

struct ScrollsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollsView()
    }
}

