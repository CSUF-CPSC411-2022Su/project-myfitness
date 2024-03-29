//
//  DrinkRecommendations.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/22/22.
//

import Foundation

struct Drinks: Identifiable {
    var id = UUID()
    
    // @Breif: Will contain the image of the recipe
    var image: String
    
    // @Breif: Will contain the title of the recipe.
    var title: String
    
    // @brief: Will store a small description of the recipe.
    var information: String
    
    // @Breif: Will store the rating other users have given the recipe.
    var rating: Int
    
    // @Breif: Will store the difficulty of creating the meal.
    var difficulty: String
    
    var prep_time: String
    // @breif: Will contain the ingrediants of the recipe.
    var ingredients: [String]
    
    // @Brief: Will contain instructions of the recipe.
    var instructions: [String]
    
    // @Breif: Calories
    var calories: String
}

// @Brief: Contains the list of Drinks that will be used to display on RecommendedDrinksUI.
var Drink = [
    Drinks(image: "Beet", title: "BeetRoot Juice", information: "Beetroot is one of the healthiest vegetables and loaded with nutrients. Beetroot juice contains nitrate, which improves exercise performance (1). Nitrate is converted into nitric oxide (NO) in the body. Nitric oxide helps in vasodilation (increases the length and width of blood vessels), improves blood flow, and increases muscle contraction (2). This sweet veggie provides energy and tastes great when mixed with lime juice and Himalayan salt.", rating: 4, difficulty: "EASY", prep_time: "5 MIN",
           ingredients: [
               "1 beetroot, peeled and chopped",
               "1 tablespoon lime juice",
               "A pinch of pink Himalayan salt"
           ],
           instructions: ["1) Blend the beetroot and transfer it to a glass.",
                          "2) Add lime juice and pink Himalayan salt to it.",
                          "3) Stir well and drink."], calories: "50 CAL"),
    
    // Chia Berry Juice
    Drinks(image: "Chia", title: "Chia Berry Juice", information: "Berries are loaded with antioxidants and contain natural sugars. The polyphenolic content of blueberries have antioxidative effects and suppress  post-exercise muscle fatigue. A study in Korea on runners showed that supplementation with blueberries increased exercise performance effectively (3). Chia seeds are good sources of protein and dietary fiber (4).", rating: 5, difficulty: "EASY", prep_time: "5-10 MIN",
           ingredients: [
               "½ cup strawberries",
               "½ cup blueberries",
               "A handful of mint leaves",
               "1 teaspoon honey",
               "1 teaspoon chia seeds"
           ],
           instructions: [
               "1) Toss the berries and mint leaves into a blender and blend well.",
               "2) Pour it into a glass.",
               "3) Add honey and chia seeds to it.",
               "4) Stir well and drink."
           ],
           calories: "90 CAL"),
    
    // Cherry Lemonade
    Drinks(image: "Cherry", title: "Cherry Lemonade", information: "A single cup of cherries (138 g) provides many nutrients (8). Studies show that the antioxidant and anti-inflammatory properties of cherries may provide relief from post-exercise injury and lead to faster muscle recovery (9). Adding lemonade to makes it a perfect homemade pre-workout drink.", rating: 4, difficulty: "EASY", prep_time: "10-15 MIN",
           ingredients: [
               "½ cup chopped cherry",
               "½ cup lime juice",
               "1 teaspoon honey",
               "¼ teaspoon fennel seed powder"
           ],
           instructions: [
               "1) Toss the chopped cherries and a little amount of water into a blender. Blend well.",
               "2) Pour it into a glass and add honey, lime juice, and fennel seed powder.",
               "3) Stir well before drinking."
           ],
           calories: "110 CAL"),
    
    // Orange Energizer
    Drinks(image: "Orange", title: "Orange Energizer", information: "Oranges and lime juice are good sources of vitamin C (10) (11). Grapes are loaded with natural sugars, thereby providing glucose to your body, which you need before exercising. A study concluded that purple grape juice improved the performance of runners by increasing time-to-exhaustion due to its high antioxidative and anti-inflammatory effects (12). Consume this drink 30-60 minutes before you go to the gym.", rating: 5, difficulty: "EASY", prep_time: "10 MIN",
           ingredients: [
               "1 cup chopped orange",
               "¼ cup green grapes",
               "2 tablespoons lime juice",
               "½ teaspoon roasted cumin seed powder"
           ],
           instructions: [
               "1) Toss the chopped orange and green grapes into a blender. Blend well.",
               "2) Pour it into a glass. Add lime juice and powdered roasted cumin seeds.",
               "3) Stir well and drink."
           ],
           calories: "90 CAL"),
    
    // Lemon and Lime Energy Tonic
    Drinks(image: "Energy", title: "Lemon and Lime Energy Tonic", information: "Energy boosting and packed with vitamin C, this lemon and lime tonic is the perfect pick me up drink!", rating: 5, difficulty: "EASY", prep_time: "5",
           ingredients: [
               "2 tablespoons organic raw honey",
               "1 cup coconut water",
               "1/4 cup fresh lime juice",
               "1/4 cup fresh lemon juice",
               "1 cup cold water or seltzer",
               "1/8 teaspoon paprika"
           ],
           instructions: [
               "1) Put honey in a bowl and add a little coconut water. Whisk until honey has dissolved. Add remaining coconut water and stir well.",
               "2) Pour lime and lemon juice through a strainer, over a bowl, to remove pulp. Add to coconut water and honey.",
               "3) Add remaining ingredients and stir.",
               "4) Serve with ice cubes."
           ], calories: "208 CAL"),
    
    // Banana Smoothie
    Drinks(image: "BananaSmoothie", title: "Banana Smoothie", information: "Bananas and coconut water are both packed with potassium, so when you put the two together, you get a powerhouse of a drink.", rating: 4, difficulty: "EASY", prep_time: "5 MIN",
           ingredients: ["Banana 1/2",
                         "Coconut water 1/2 cup",
                         "Orange or mosambi juice 1/2 glass, freshly squeezed if possible."],
           instructions: ["1) Roughly chop the banana and orange quarters, and then add to a blender. Top with yogurt and water (or milk). Turn blender on and blend until creamy and smooth. Taste, and then adjust with honey if needed."], calories: "250 CAL")
]
