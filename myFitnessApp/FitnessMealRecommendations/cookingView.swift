//
//  cookingView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/20/22.
//

import SwiftUI

struct cookingView: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                    .foregroundColor(.blue)
                Text("Prep time: \(recipe.prep_time)")
                    .font(.system(.body, design: .serif))
            }
            
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "flame")
                    .foregroundColor(.red)
                Text("Cook time: \(recipe.cooktime)")
                    .font(.system(.body, design: .serif))
            }
        }
    }
}

struct cookingView_Previews: PreviewProvider {
    static var previews: some View {
        cookingView(recipe: recipes[0])
    }
}
