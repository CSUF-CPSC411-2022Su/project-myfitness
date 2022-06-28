//
//  WorkoutCalorieLoss.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/8/22.

import Foundation
import SwiftUI
class GlobalModel: ObservableObject {
    static let global = GlobalModel()

    @Published var reps = ""
    @Published var sets = ""
    @Published var distance = ""
    @Published var time = ""
    @Published var weight = ""
}
