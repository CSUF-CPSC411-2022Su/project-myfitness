//
//  DrinksCardView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/22/22.
//

import SwiftUI

struct DrinksCardView: View {
    var drink_: Drinks
    var hapticTouch = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                // @breif: Card Image
                Image(drink_.image)
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
                    Text(drink_.title)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .lineLimit(2)
                
                    // @breif: Displays
                    Text(drink_.information)
                        .foregroundColor(Color.black)
                        .italic()
                    
                    // @Breif: Rating
                    DrinkRating(drink: drink_)
                    
                    // @Breif: Prep
                    DrinkPrep(ddrink: drink_)
                        
                }
                .padding()
                .padding(.bottom, 12)
            }
            
            .onTapGesture {
                self.hapticTouch.impactOccurred()
                self.showModel = true
            }
            .sheet(isPresented: self.$showModel) {
                DrinkDetailsView(drinkss: self.drink_)
            }
        }
    }
}

struct DrinksCardView_Previews: PreviewProvider {
    static var previews: some View {
        DrinksCardView(drink_: Drink[1])
        .previewLayout(.sizeThatFits)
    }
}
