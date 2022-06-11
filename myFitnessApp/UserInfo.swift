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
                return 655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age)
            } else {
                return 66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age)
                
            }
        }
    }
    
    
}
