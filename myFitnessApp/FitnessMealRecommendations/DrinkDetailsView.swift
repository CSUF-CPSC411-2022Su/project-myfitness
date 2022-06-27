//
//  DrinkDetailsView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/24/22.
//

import SwiftUI

struct DrinkDetailsView: View {
    var drinkss: Drinks
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(drinkss.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // @Breif: Title
                    Text(drinkss.title)
                        .font(.system(.largeTitle, design: .serif))
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                    
                    // @Breif: Rating
                    DrinkRating(drink: drinkss)
                    
                    // @Breif: Cook Time
                    DrinkPrep(ddrink: drinkss)
                    
                    // @Breif: Ingrediants
                    Text("Ingrediants")
                        .font(.system(.title3, design: .serif))
                        .fontWeight(.semibold)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(drinkss.ingrediants, id: \.self) {
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
                        ForEach(drinkss.instructions, id: \.self) {
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
        }.background(
            Image("green2")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width:450, height: 850))
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.top)
    }
}
struct DrinkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetailsView(drinkss: Drink[0])
    }
}
