//
//  WorkoutCalorieLoss.swift
//  myFitnessApp
//
//  Created by csuftitan on 6/8/22.

import Foundation
import SwiftUI
class WorkoutInfo: ObservableObject {
    
    @Published var distance: Double
    @Published var time: Double
    @Published var weightkg: Double
    @Published var met: Double
    @Published var weightLossCardio: Double
    
    var METcardiovalue: Double {
        switch distance {
        case 1...2.9: return 3
        case 3...4.9: return 4
        case 5...10: return 5
        case 11...: return 8
        default: return 1
            
        }
    }
 
    func cardioWeightLoss() -> Double{
        
        return time * met * 3.5 * weightkg / 200
        
    }
    
    init(weightkg: Double, time: Double, distance: Double, met: Double, weightLossCardio: Double)
    {
        self.weightkg = weightkg
        self.time = time
        self.distance = distance
        self.met = met
        self.weightLossCardio = weightLossCardio
    }
   init() {
        self.weightkg = 0
        self.time = 0
        self.distance = 0
        self.met = 0
        self.weightLossCardio = 0
    }
}

class CoreWorkoutInfo: ObservableObject {
    
    @Published var repsCore: Double
    @Published var setsCore: Double
    @Published var weightkg: Double
    @Published var met: Double
    @Published var coreWeightLoss: Double
    
    var METstrengthvalue: Double {
        switch repsCore {
        case 1...2.9: return 3
        case 3...4.9: return 4
        case 5...7: return 5
        case 8...10: return 7
        case 10...13: return 9
        case 13...16: return 11
        case 16...: return 12
        default: return 1
        }
    }
    func getCoreWeightloss() -> Double{
        
        return repsCore * met * 3.5 * weightkg / 200
        
    }
    
    init(weightkg: Double, setsCore: Double, repsCore: Double, met: Double, coreWeightLoss: Double)
    {
        self.weightkg = weightkg
        self.setsCore = setsCore
        self.repsCore = repsCore
        self.met = met
        self.coreWeightLoss = coreWeightLoss
    }
   init() {
        self.weightkg = 0
        self.setsCore = 0
        self.repsCore = 0
        self.met = 0
        self.coreWeightLoss = 0
    }
}

class UpperWorkoutInfo: ObservableObject {
    
    @Published var repsUp: Double
    @Published var setsUp: Double
    @Published var weightkg: Double
    @Published var met: Double
    @Published var upperWeightLoss: Double
    
    var METstrengthvalue: Double {
        switch repsUp {
        case 1...2.9: return 3
        case 3...4.9: return 4
        case 5...7: return 5
        case 8...10: return 7
        case 10...13: return 9
        case 13...16: return 11
        case 16...: return 12
        default: return 1
        }
    }
    func getUpperWeightLoss() -> Double{
        
        return repsUp * met * 3.5 * weightkg / 200
    }
    
    init(weightkg: Double, setsUp: Double, repsUp: Double, met: Double, upperWeightLoss: Double)
    {
        self.weightkg = weightkg
        self.setsUp = setsUp
        self.repsUp = repsUp
        self.met = met
        self.upperWeightLoss = upperWeightLoss
    }
   init() {
        self.weightkg = 0
        self.setsUp = 0
        self.repsUp = 0
        self.met = 0
        self.upperWeightLoss = 0
    }
}

class LowerWorkoutInfo: ObservableObject {
    
    @Published var repsLow: Double
    @Published var setsLow: Double
    @Published var weightkg: Double
    @Published var met: Double
    @Published var lowerWeightLoss: Double
    
    var METstrengthvalue: Double {
        switch repsLow {
        case 1...2.9: return 3
        case 3...4.9: return 4
        case 5...7: return 5
        case 8...10: return 7
        case 10...13: return 9
        case 13...16: return 11
        case 16...: return 12
        default: return 1
        }
    }
    func getLowerWeightLoss() -> Double{
        
        return repsLow * met * 3.5 * weightkg / 200
    }
    
    init(weightkg: Double, setsLow: Double, repsLow: Double, met: Double, lowerWeightLoss: Double)
    {
        self.weightkg = weightkg
        self.setsLow = setsLow
        self.repsLow = repsLow
        self.met = met
        self.lowerWeightLoss = lowerWeightLoss
    }
   init() {
        self.weightkg = 0
        self.setsLow = 0
        self.repsLow = 0
        self.met = 0
        self.lowerWeightLoss = 0
    }
    
    
}

