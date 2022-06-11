//
//  UserInfo.swift
//  myFitnessApp
//
//  Created by Cortez, David on 6/11/22.
//

import Foundation

struct UserInfo{
    //TBD
    var weight: Double
    
    var height: Int
    
    var gender: Bool
    
    var age: Int
    
    enum Exercise {
        case littleToNone
        case light
        case moderate
        case active
        case veryActive
    }
    
    var BMR: Double {
        
        get {
            if gender {
                return Double(655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age))
            } else {
                return Double(66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age))
                
            }
        }
    }
    
    var AMR: Double {
        
        get {
            switch Exercise {
                case littleToNone
                    return BMR * 1.2
                case light
                    return BMR * 1.375
                case moderate
                    return BMR * 1.55
                case active
                    return BMR * 1.725
                case veryActive
                    return BMR * 1.9
            }
        }
        
    }
    
    init(weight: Double, height: Double, gender: bool, age: Int, exercise: Exercise) {
        self.weight = weight
        self.height = height
        self.gender = gender
        self.age = age
        self.Exercise = exercise
    }
    
    
}
