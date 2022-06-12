//
//  ContentView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI



struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var age = ""
    
    var body: some View {
        VStack {
            TextField("Weight", text: $weight)
                .padding()
                .keyboardType(.decimalPad)
            TextField("Height", text: $height)
                .padding()
                .keyboardType(.decimalPad)
            TextField("Age", text: $age)
                .padding()
                .keyboardType(.decimalPad)
            //Picker("Gender", selection: $gender) {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
