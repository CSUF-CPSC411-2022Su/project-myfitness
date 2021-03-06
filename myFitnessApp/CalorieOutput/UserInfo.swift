//
//  UserInfo.swift
//  myFitnessApp
//
//  Created by Cortez, David on 6/11/22.
//

import Foundation
enum Exercise: String, CaseIterable {
    case littleToNone
    case light
    case moderate
    case active
    case veryActive
}

enum Gender: String, CaseIterable {
    case male
    case female
}

class UserInfo: ObservableObject {
    // TBD
    @Published var weight: Double
    
    @Published var height: Double
    
    @Published var gender: Gender
    
    @Published var age: Int
    
    @Published var exercise: Exercise
    
    var BMR: Double {
        if gender == .male {
            let part1 = 655.1 + (9.563 * weight)
            let part2 = (1.850 * height)
            let part3 = (4.676 * Double(age))
            return Double(part1 + part2 - part3)
        } else {
            let part1 = 66.47 + (13.75 * weight)
            let part2 = (5.003 * height)
            let part3 = (6.755 * Double(age))
            return Double(part1 + part2 - part3)
        }
    }
    
    let currentExercise: Exercise = .littleToNone
    
    var AMR: Double {
        switch currentExercise {
        case .littleToNone:
            return BMR * 1.2
        case .light:
            return BMR * 1.375
        case .moderate:
            return BMR * 1.55
        case .active:
            return BMR * 1.725
        case .veryActive:
            return BMR * 1.9
        }
    }
    
    init(weight: Double, height: Double, gender: Gender, age: Int, exercise: Exercise) {
        self.weight = weight
        self.height = height
        self.gender = .male
        self.age = age
        self.exercise = exercise
    }
    
    init() {
        self.weight = 0
        self.height = 0
        self.gender = .male
        self.age = 0
        self.exercise = .littleToNone
    }
    
    func calculateCalorieIntake() -> Double {
        return 0
    }
}
