//
//  Strength.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/25/22.
//

import Foundation
import SwiftUI
struct StrengthView: View {
    var body: some View {
        ZStack{
            VStack {
                (Text("Choose strength workout"))
                    .modifier(OtherText())
                NavigationLink(destination: CoreView()) {
                    Image("coreeeee")
                        .resizable()
                        .scaledToFit()
                }
                NavigationLink(destination: UpperBodyView()) {
                    Image("upperbody22222")
                        .resizable()
                        .scaledToFit()
                        }
                NavigationLink(destination: LowerBodyView()) {
                    Image("lowerbody11111")
                        .resizable()
                        .scaledToFit()
                }
            }
        }//End of Navigation view
        .background(
               Image("green33333")
                   .resizable()
                   .edgesIgnoringSafeArea(.all)
                   .frame(width: 450, height: 850)
               )
    }//End of body View
}//End of View struct
struct Strength_Previews: PreviewProvider {
    static var previews: some View {
        StrengthView()
    }
}
