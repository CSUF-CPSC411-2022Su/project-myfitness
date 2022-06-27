//
//  UpperBodyView.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI
struct UpperBodyView: View {
    @StateObject var global = GlobalModel.global
    @State var isPresenting = false
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack{
                    ScrollView(.horizontal) {
                        HStack {
                            Image("fitness22222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height:400)
                            Image("fitness22222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height:400)
                            Image("fitness22222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height:400)
                            Image("fitness22222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height:400)
                            Image("fitness22222")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height:400)
                        }
                    }.frame(height: geometry.size.height / 3)
                    Text("Input the number of reps and sets to see how many calories you lost")
                        //.padding(.top, -50)
                        .modifier(RegularText())
                        .padding()
                    HStack {
                        Text("Enter your reps")
                            .modifier(RegularText())
                        TextField("", text: $global.reps)
                        //.modifier(RegularText())
                    //let reps = Int($global.reps.text!) ?? 0
                    }
                    HStack {
                        Text("Enter your sets")
                            .modifier(RegularText())
                        TextField("", text: $global.sets)
                            //.modifier(RegularText())
                    }
                    Button("Calculate") {
                        isPresenting = true
                    }.modifier(OtherText())
                    NavigationLink(destination: CaloriesView(), isActive: $isPresenting) {EmptyView()}
                }//End of first VStack
            }//End of ZStack
            .background(
                   Image("green44444")
                       .resizable()
                       .aspectRatio(geometry.size, contentMode: .fill)
                       //.frame(width: 500, height: 850)
                       .edgesIgnoringSafeArea(.all)
                       .frame(width: 850, height: 850)
               )
        }
    }//End of body View
}//End of View struct
struct UpperBodyView_Previews: PreviewProvider {
    static var previews: some View {
        UpperBodyView()
            .previewInterfaceOrientation(.portrait)
    }
}

