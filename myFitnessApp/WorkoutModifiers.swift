//
//  WorkoutModifiers.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/26/22.
//

import Foundation
import SwiftUI

struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.white)
    }
}
struct NavModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(20)
            .background(Color.white)
            .foregroundColor(Color.black)
            .cornerRadius(10)
            .padding(20)
    }
}

