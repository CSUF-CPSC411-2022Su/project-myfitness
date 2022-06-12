//
//  UserInfo.swift
//  myFitnessApp
//
//  Created by Cortez, David on 6/11/22.
//

import Foundation
enum Exercise {
    case littleToNone
    case light
    case moderate
    case active
    case veryActive
}
struct UserInfo{
    //TBD
    var weight: Double
    
    var height: Double
    
    var gender: Bool
    
    var age: Int
    
    var exercise: Exercise
    
    var BMR: Double {
        
        get {
            if gender {
                var part1 = 655.1 + (9.563 * weight)
                var part2 = (1.850 * height)
                var part3 = (4.676 * Double(age))
                return Double( part1 + part2  - part3 )
            } else {
                var part1 = 66.47 + (13.75 * weight)
                var part2 = (5.003 * height)
                var part3 = (6.755 * Double(age))
                return Double(part1 + part2 - part3)
                
            }
        }
    }
    
    
    let currentExercise: Exercise = .littleToNone
    
    var AMR: Double {
        
        get {
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
            default:
                return 0.0
            }
        }
        
    }
    
    init(weight: Double, height: Double, gender: Bool, age: Int, exercise: Exercise) {
        self.weight = weight
        self.height = height
        self.gender = gender
        self.age = age
        self.exercise = exercise
    }
    
    init(){
        self.weight = 0
        self.height = 0
        self.gender = false
        self.age = 0
        self.exercise = .littleToNone
    }
    
    
}
