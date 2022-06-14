//
//  ScrollsView.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/13/22.
//

import SwiftUI

struct ScrollsView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack {
                ForEach(0..<10) { index in RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.green)
                        .frame(width: 150, height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        })
    }
}
