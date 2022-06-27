//
//  WorkoutUI.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/25/22.
//

import Foundation
import SwiftUI

struct WorkoutUI: View {
    //@State var reps = ""
    //@State var sets = ""
    //@State var distance = ""
    //@State var time = ""
    //@State var weight = ""
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack {
                    VStack {
                        Spacer()
                        VStack {
                            Text("Choose Your Workout")
                                .modifier(TitleText())
                        }
                        VStack {
                            Image("fitness11111")
                                .resizable()
                                .scaledToFit()
                                .frame(width:300, height: 300)
                                //.padding(.top, -200)
                        }
                        HStack {
                            //Button(action)
                            NavigationLink(destination: CardioView()) {
                                Text("Cardio")
                                    .modifier(NavModifiers())
                            }
                            NavigationLink(destination: StrengthView()) {
                                Text("Strength")
                                    .modifier(NavModifiers())
                            }
                        }//.frame(width: .infinity, height: geometry.size.height / 2)
                        VStack {
                            Image("fitness22222")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                        }
                    }
                }//End of ZStack
                .background(
                       Image("green11111")
                           .resizable()
                           .edgesIgnoringSafeArea(.all)
                           .frame(width: 850, height: 850)
               )
            }//End of Navigation
        }//End of GeometryReader
    }//End of body View
}//End of View struct
struct WorkoutUI_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutUI()
            .previewInterfaceOrientation(.portrait)
    }
}


