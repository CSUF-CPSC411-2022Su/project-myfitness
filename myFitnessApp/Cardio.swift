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
                        .modifier(RegularText())
                        .padding()
                    VStack {
                        Text("Enter the distance: ")
                            .modifier(RegularText())
                        TextField("Distance", text: $global.distance)
                            .multilineTextAlignment(.center)
                            .padding()
                        //let reps = Int($global.reps.text!) ?? 0
                    }//End of Distance VStack
                    VStack {
                        Text("Enter time to complete exercise")
                            .modifier(RegularText())
                        TextField("Time", text: $global.time)
                            .multilineTextAlignment(.center)
                            .padding()
                    }//End of time VStack
                    VStack {
                        Text("Enter weight to complete exercise")
                            .modifier(RegularText())
                        TextField("Weight", text: $global.weight)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    Spacer()
                    Button("Calculate") {
                        isPresenting = true
                    
                    }.modifier(OtherText())
                    Spacer()
                    NavigationLink(destination: CaloriesView(), isActive: $isPresenting) {EmptyView()}
                }//End of VStack
            }//End of ZStack
            .background(
                   Image("green22222")
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
