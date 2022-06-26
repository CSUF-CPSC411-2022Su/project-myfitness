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
        NavigationView {
            VStack {
                (Text("Choose strength workout"))
                NavigationLink(destination: CoreView()) {
                    Image("abs")
                        .resizable()
                        .scaledToFit()
                }
                ScrollView {
                    HStack {
                        NavigationLink(destination: ArmsView()) {
                            Image("abs")
                                .resizable()
                                .scaledToFit()
                            Image("abs")
                                .resizable()
                                .scaledToFit()
                            Image("abs")
                                .resizable()
                                .scaledToFit()
                            Image("abs")
                                .resizable()
                                .scaledToFit()
                            
                        
                    }
              
                }
                }
                ScrollView {
                    HStack {
                NavigationLink(destination: LegsView()) {
                    Text("Legs")
                }
                }
                }
                
            }
        }//End of Navigation view
    }//End of body View
}//End of View struct
struct Strength_Previews: PreviewProvider {
    static var previews: some View {
        StrengthView()
    }
}
