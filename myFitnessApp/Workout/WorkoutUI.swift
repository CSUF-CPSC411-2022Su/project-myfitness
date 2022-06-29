//
//  WorkoutUI.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/25/22.
//

import Foundation
import SwiftUI

struct WorkoutUI: View {
    // @State var reps = ""
    // @State var sets = ""
    // @State var distance = ""
    // @State var time = ""
    // @State var weight = ""
    var body: some View {
        //GeometryReader { _ in
            NavigationView {
                ZStack {
                    VStack {
                        Spacer()
                        VStack {
                            Text("Choose Your Workout")
                                .padding(.top, -50)
                                .modifier(TitleText())
                        }
                        VStack {
                            Image("fitness11111")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300)
                                .padding(.top, -30)
                        }//End of VStack containing topimage
                        HStack {
                            NavigationLink(destination: CardioView()) {
                                Text("Cardio")
                                    .modifier(NavModifiers())
                                    .padding(.top, -30)
                            }
                            NavigationLink(destination: StrengthView()) {
                                Text("Strength")
                                    .modifier(NavModifiers())
                                    .padding(.top, -30)
                            }
                        }//End of HStack containing NavigationLinks
                        VStack {
                            Image("fitness22222")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                        }//End of VStack containing bottom image
                    }//End of top VStack
                } // End of ZStack
                .background(
                    Image("green11111")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 850, height: 850)
                )
            } // End of Navigation View
        //} // End of GeometryReader
    } // End of body View
} // End of View struct
struct WorkoutUI_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutUI()
            .previewInterfaceOrientation(.portrait)
    }
}
#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
