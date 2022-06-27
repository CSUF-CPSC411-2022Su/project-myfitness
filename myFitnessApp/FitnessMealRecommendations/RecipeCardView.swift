//
//  RecipeCard.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/15/22.
//

import SwiftUI

struct RecipeCardView: View {
    var recipe: Recipe
    var hapticTouch = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                // @breif: Card Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .overlay(
                        HStack {
                            Spacer()
                            VStack {
                                Image(systemName: "heart")
                                    .font(Font.title.weight(.light))
                                    .foregroundColor(Color.white)
                                    .imageScale(.small)
                                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                    .padding(.trailing, 20)
                                    .padding(.top, 20)
                                Spacer()
                            }
                        }
                    )
                VStack(alignment: .leading, spacing: 12) {
                    // @Brief: Displays title
                    Text(recipe.title)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .lineLimit(2)
                
                    // @breif: Displays
                    Text(recipe.information)
                        .foregroundColor(Color.black)
                        .italic()
                    
                    // @Breif: Rating
                    RecipeRating(recipe: recipe)
                        
                    // @Breif: Cooktime
                    cookingView(recipe: recipe)
                }
                .padding()
                .padding(.bottom, 12)
            }
            
            .onTapGesture {
                self.hapticTouch.impactOccurred()
                self.showModel = true
            }
            .sheet(isPresented: self.$showModel) {
                RecipeDetailsView(recipe: self.recipe)
            }
        }
    }
}
     
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipes[0])
            .previewLayout(.sizeThatFits)
    }
}
