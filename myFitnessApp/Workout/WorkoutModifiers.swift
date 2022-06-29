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
            .foregroundColor(Color.black)
    }
}
struct OtherText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.black)
    }
}
struct RegularText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Arial", size: 18))
            .foregroundColor(Color.black)
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
struct TextFieldModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 150)
            .padding(5)
            .background(Color.white)
            .foregroundColor(Color.black)
            .cornerRadius(10)
            .padding(5)
    }
}
