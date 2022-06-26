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
        //NavigationView {
            List {
                (Text("Choose strength workout"))
                    .padding()
                NavigationLink(destination: CoreView()) {
                    Text("Core")
                }
                NavigationLink(destination: ArmsView()) {
                    Text("Arms")
                }
                NavigationLink(destination: LegsView()) {
                    Text("Legs")
                }
        }
    }
}
struct Strength_Previews: PreviewProvider {
    static var previews: some View {
        StrengthView()
    }
}
