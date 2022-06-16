//
//  File.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import SwiftUI
import Foundation

struct Recipe {
    //Things that need to be added to Feature 3:
    //1. look for an API that has recipes that are healthy.
    //2. Create a view controller and start to design how you want viewcontroller to look like. [DONE]
    //3. Implement functions that will help with feature and write comments as you go to make sure you understand what is happening in the code.
    //4. Unit testing once functions are created to ensure feature is working correctly.
    
    // @Breif: Will contain the image of the recipe
    var image: String
    
    //@Breif: Will contain the title of the recipe.
    var title: String
    
    //@brief: Will store a small description of the recipe.
    var information: String
    
    //@Breif: Will store the rating other users have given the recipe.
    var rating: String
    
    //@Breif: Will store the difficulty of creating the meal.
    var difficulty: String
    
    //@Breif: Will set the color of the recipe card depending on its difficulty.
    var color: Color
}

var recipes = [
    
    //Spinach Salad
    Recipe(image: "", title: "Spinach Salad", information: "Simply the best Easy Spinach Salad recipe with eggs, tomatoes, cucumbers, sesame seeds, and a healthy salad dressing.", rating: "5", difficulty: "Easy", color: Color("blue")),
    
    //Brown Rice Summer Rolls
    Recipe(image: "", title: "Brown Rice Summer Rolls", information: "It's got enough carbohydrate, sodium and fat to replenish depleted stores, and protein to aid in muscle recovery.", rating: "4.5", difficulty: "Medium", color: Color("yellow"))

]

