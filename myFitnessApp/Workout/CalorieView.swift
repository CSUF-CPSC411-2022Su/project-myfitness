//
//  CalorieView.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/27/22.
//

import Foundation
import SwiftUI

struct CaloriesView: View {
    var body: some View {
        ZStack {
            
            VStack{
                Image("youdidit11111")
                    .resizable()
                    .scaledToFit()
                Text("This is how many calories you lost")
                    .padding()
                
            }
        }//End of ZStack
        .background(
               Image("green55555")
                   .resizable()
                   .edgesIgnoringSafeArea(.all)
                   .frame(width: 450, height: 850)
           )
    }//End of body View
}//End of CaloriesView struct

struct CalorieView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
            .previewInterfaceOrientation(.portrait)
    }
}
