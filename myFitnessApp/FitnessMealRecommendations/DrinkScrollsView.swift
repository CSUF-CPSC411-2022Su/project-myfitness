//
//  DrinkScrollsView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/23/22.
//

import SwiftUI

struct DrinkScrollsView: View {
    var healthy: [Drinks] = Drink
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 20) {
                ForEach(healthy) { drink_ in DrinksCardView(drink_: drink_)
                }
            }
            .frame(maxWidth: 1500,maxHeight: 640)
            .padding(.horizontal)
            .shadow(radius: 5)
        }
    }
}

struct DrinkScrollsView_Previews: PreviewProvider {
    static var previews: some View {
        DrinkScrollsView()
    }
}
