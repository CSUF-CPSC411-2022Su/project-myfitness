//
//  Cardio.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI

struct CardioView: View {
    @StateObject var global = GlobalModel.global
    @State var isPresenting = false
    //@StateObject weight = userInfo.CalorieCalculatorOutputView()
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack{
                    Text("Awesome job working out!")
                        .modifier(OtherText())
                        .padding()
                    Text("Input the distance and time of cardio workout as well as weight to calculate calories lost")
                        .padding()
                    VStack {
                        Text("Enter the distance: ")
                        TextField("Distance", text: $global.distance)
                            .multilineTextAlignment(.center)
                            .padding()
                        //let reps = Int($global.reps.text!) ?? 0
                    }
                    VStack {
                        Text("Enter time to complete exercise")
                        TextField("Time", text: $global.time)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    VStack {
                        Text("Enter time to complete exercise")
                        TextField("Time", text: $global.weight)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    Button("Calculate") {
                        isPresenting = true
                    
                    }.modifier(OtherText())
                    Spacer()
                    NavigationLink(destination: CaloriesView(), isActive: $isPresenting) {EmptyView()}
                }
            }//End of ZStack
            .background(
                   Image("green2")
                       .resizable()
                       .edgesIgnoringSafeArea(.all)
                       .frame(width: .infinity, height: .infinity)
                   )
        }//End of GeometryReader
    }//End of body view
}//End of View struct
struct Cardio_Previews: PreviewProvider {
    static var previews: some View {
        CardioView()
    }
}
