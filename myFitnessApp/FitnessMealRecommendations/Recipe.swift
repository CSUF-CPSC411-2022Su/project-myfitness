//
//  File.swift
//  myFitnessApp
//
//  Created by Luis Alvarado on 6/8/22.
//

import Foundation
import SwiftUI

struct Recipe: Identifiable {
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
    
    // @Breif: Will store the cooktime of the recipe.
    var cooktime: String
    
    // @Brief: Will contain instructions of the recipe.
    var instructions: [String]
    
    // @breif: Will contain the ingrediants of the recipe.
    var ingredients: [String]
}

var recipes = [
    // Spinach Salad
    Recipe(image: "Spinach",
           title: "Spinach Salad",
           information: "Simply the best Easy Spinach Salad recipe with eggs, tomatoes, cucumbers, sesame seeds, and a healthy salad dressing.",
           rating: 5,
           difficulty: "EASY",
           prep_time: "5 MIN",
           cooktime: "5 MIN",
           instructions: ["1) In a medium bowl, whisk together all dressing ingredients until completely incorporated. Season with salt and pepper.",
                          "2) Combine all salad ingredients in a large bowl. Add dressing, toss to combine, and serve immediately."],
           ingredients: ["5 oz. fresh spinach",
                         "1 apple, such as Honeycrisp, thinly sliced",
                         "1/3 c. crumbled feta",
                         "1/4 red onion, thinly sliced",
                         "1/4 c. sliced almonds, toasted",
                         "FOR DRESSING",
                         "1/3 c. olive oil",
                         "3 tbsp. red wine vinegar",
                         "1 clove garlic or 1/2 shallot, minced",
                         "2 tsp. dijon mustard",
                         "Kosher salt",
                         "Freshly ground black pepper"]),
    
    // Lemon Chicken
    Recipe(image: "Lemon",
           title: "Lemon Chicken",
           information: "A lusciious tangy stir-fry that makes two generous portions for very few calories.",
           rating: 4,
           difficulty: "EASY",
           prep_time: "15 MIN",
           cooktime: "30 MIN",
           instructions: ["DIRECTIONS FOR OVEN",
                          "1) Preheat oven to 400°. In a medium bowl, whisk together flour, lemon pepper, salt, and zest of 1 lemon. Toss chicken breasts in the flour mixture until fully coated. Slice remaining lemon into thin rounds.",
                          "2) In a large ovenproof skillet over medium-high heat, heat oil. Add chicken in a single layer and cook until golden on bottom, about 5 minutes, then flip chicken breasts.",
                          "3) To skillet, add broth, butter, garlic, and lemon slices and bake until chicken is cooked through and sauce has reduced slightly, about 5 minutes.",
                          "4) Spoon sauce on top of chicken and garnish with parsley.",
                          "DIRECTIONS FOR STOVETOP",
                          "1) In a medium bowl, whisk together flour, lemon pepper, salt, and zest of 1 lemon. Toss chicken breasts in the flour mixture until fully coated. Slice remaining lemon into thin rounds.",
                          "2) In a large ovenproof skillet over medium-high heat, heat oil. Add chicken in a single layer and cook until golden on bottom, about 5 minutes, then flip chicken breasts.",
                          "3) To skillet, add broth, butter, garlic, and lemon slices and cook until chicken is cooked through and sauce has reduced slightly, 3 minutes.",
                          "4) Spoon sauce on top of chicken and garnish with parsley."],
           ingredients: ["1/2 c. all-purpose flour",
                         "1 tbsp. lemon pepper seasoning",
                         "1 tsp. kosher salt",
                         "2 lemons, divided",
                         "1 lb. boneless skinless chicken breasts, halved",
                         "2 tbsp. extra-virgin olive oil",
                         "1/2 c. Chicken broth Swanson Chicken Broth",
                         "2 tbsp. butter",
                         "2 cloves garlic, minced",
                         "Freshly chopped parsley, for garnish"]),
    
    // Eggplant Kasundi warm rice salad
    Recipe(image: "Eggplant",
           title: "Eggplant Kasundi Warm Rice Salad",
           information: "A lovely combination of fresh and filling, this warm rice salad will quickly become a go-to recipe in your household.",
           rating: 5,
           difficulty: "EASY",
           prep_time: "10 MIN",
           cooktime: "45 MIN",
           instructions: ["1) Heat oil in a saucepan over medium heat. Add seeds and curry leaves. Cook for 2 minutes or until mustard seeds start to pop. Add the onion, ginger and two-thirds garlic. Cook 3-4 minutes until onion has softened. Add eggplant, curry powder and sugar. Cook 8-10 minutes until eggplant has softened slightly.",
                          "2) Stir in vinegar, half the tomatoes and 1 cup (250ml) water. Bring to the boil. Reduce heat to mediumlow and simmer, loosely covered, for 25 minutes or until eggplant is very tender. Stir in chickpeas and remaining tomatoes.",
                          "3) For the rice, combine all ingredients with 2 cups (500ml) cold water and 1 tsp salt flakes in a pan over high heat. Bring to the boil. Reduce heat to low, cover and cook, without stirring, for 12 minutes or until water has been absorbed and rice is tender. Uncover and stir with a fork.",
                          "4) For dressing, combine yoghurt, lemon juice and remaining garlic in a small bowl.",
                          "5) Place rice in a bowl. Top with eggplant and cucumber. Drizzle over dressing and scatter with mint. Toss to serve."],
           ingredients: ["½ cup (125ml) olive oil",
                         "1 tsp each cumin seeds, caraway seeds, fennel seeds & nigella seeds",
                         "1 tbs brown mustard seeds",
                         "24 fresh curry leaves",
                         "1 onion, finely chopped",
                         "1 tbs finely grated ginger",
                         "3 garlic cloves, crushed",
                         "600g eggplant, cut into 1cm pieces",
                         "2 tbs each curry powder, brown sugar & white vinegar",
                         "2 x 400g cans cherry tomatoes",
                         "400g can chickpeas, rinsed, drained",
                         "½ cup (140g) thick Greek-style yoghurt",
                         "Juice of ½ a lemon",
                         "1 Lebanese cucumber, thinly sliced into rounds",
                         "Mint leaves, to serve",
                         "CARDAMOM RICE",
                         "250g basmati rice",
                         "4 cardamom pods",
                         "2 star anise"]),
    
    // superfood
    Recipe(image: "Superfood",
           title: "Superfood Salad",
           information: "This Superfood Salad is loaded with good for you ingredients like kale, quinoa and chia seeds and is topped off with a fresh and light maple vinaigrette. The salad comes together in just 15 minutes and is perfect if you’re looking for a super healthy meal!",
           rating: 4,
           difficulty: "EASY",
           prep_time: "15 MIN",
           cooktime: "",
           instructions: ["1) Preheat oven to 200 degrees celsius. Peel and chop the pumpkin into bitesized pieced and place on a lined baking tray. Spray with olive oil and season with salt and pepper. Bake for around half an hour, turning half way through. Set aside to cool.",
                          
                          "2) Add quinoa and 1 cup water to the boil in a small saucepan. Cover, and simmer for 15 minutes, then leaving the lid on steam for another 5 minutes. Set aside to cool.",
                          
                          "3) To make the dressing, combine all ingredients in a small jar and shake to combine.",
                          
                          "4) To prepare the salad, massage a third of the dressing into the kale. Add the other ingredients and combine, finishing with the remaining dressing and pomegranate seeds on top."],
           ingredients: ["You can basically swap and change ingredients here as you wish, but below is the way I usually make it. I sometimes also add in chopped broccoli and beetroot if I have them, or steam some greens. Other nuts such as almonds work well instead of the walnuts. Fresh blueberries would also be great when in season.",
                         
                         "2/3 cup of quinoa, rinsed",
                         "Half a butternut pumpkin",
                         "1 avocado, cubed",
                         "6 kale leaves, chopped",
                         "100g baby spinach",
                         "2 tomatoes, diced",
                         "1 large carrot, grated",
                         "1/4 cup dried blueberries (or fresh when in season)",
                         "1/4 cup chopped walnuts",
                         "1/4 cup mixed seeds (pepitas, chia, sunflower)",
                         "Pomegranate seeds to serve",
                         
                         "Dressing",
                         "2 Tbsp apple cider vinegar",
                         "1 Tbsp olive oil",
                         "1/2 Tbsp water",
                         "1/2 Tbsp lemon juice",
                         "2 tsp raw honey",
                         "2 tsp seeded mustard",
                         "salt and pepper to taste"]),
    
    // Quinoa Bowel
    Recipe(image: "Quinoa",
           title: "Quinoa Bowl",
           information: "Quinoa bowls are a great catch-all, an easy way to turn what you’ve got around into a healthy, filling meal. Plus, our quinoa bowl sauce—a super savory, creamy, plant-based dressing made with edamame, garbanzo beans and nutritional yeast—really ties everything together.", rating: 5,
           difficulty: "Medium",
           prep_time: "20 MIN",
           cooktime: "25 MIN",
           instructions: [
               "Here’s how to make a delicious quinoa bowl:",
               "1) Cook quinoa. If you buy from the bulk bins, you should rinse the quinoa before boiling. A lot of boxed quinoa brands are “pre-rinsed”.",
               "2)While the quinoa simmers, prep the toppings and the dressing!",
               "3) Dressing: dump all of the quinoa bowl dressing ingredients into a blender (or use an immersion blender) and blend until the sauce is smooth and creamy.",
               "4)Assemble your quinoa bowls! Oh right—another awesome thing about doing quinoa bowls for dinner is that they’re naturally customizable. If you’ve got picky eaters in the house, try laying out all of the various topping options and letting everyone just assemble their bowls as they please. If you leave the chicken off, suddenly you’ve got a vegan quinoa bowl! If you were to top the bowl with nothing BUT chicken and dressing, you’d still be able to call that a pretty healthy dinner. In other words, everybody wins!"
           ],
           ingredients: ["1 cup of quinoa (red, white or mixed), rinsed",
                         "2 cups of vegetable or chicken stock",
                         "cilantro",
                         "grated carrots",
                         "cherry tomatoes",
                         "avocado",
                         "black beans, rinsed",
                         "cooked, shredded chicken (leave out if vegan)",
                         "brussel sprouts, shredded"]),
    
    //Stir FRY
    Recipe(image: "Stir", title: "Beef Stir Fry", information: "Easy Beef Stir Fry is the perfect Chinese-restaurant-inspired dish that you can make at home. To get delicious flavor use lots of been, your favorite vegetables, and of course a great sauce.", rating: 5, difficulty: "HARD", prep_time: "20 MIN", cooktime: "30 MIN",
        instructions: [
        "1) Season steak with salt & pepper. Toss with cornstarch and set aside while you prepare the vegetables.",
        "2) Place 1 tablespoon of oil in a pan or wok. Cook the beef in 2 small batches over medium high until browned, about 2-3 minutes (beef does not need to be cooked through). Remove from pan and set aside.",
        "3) Add vegetables to the pan and cook about until tender crisp, 4-5 minutes. Remove from pan and set aside with the beef.",
        "4) Combine sauce ingredients except corn starch in a bowl and stir well.",
        "5)Turn the heat up to medium-high and add the sauce. Bring to a simmer. Combine cornstarch with 3 tablespoons water (or broth) and add it the sauce a little bit at a time while whisking to reach desired consistency. Let simmer 2 minutes. Add vegetables, beef (and any juices) to the pan and cook until heated through.",
        "6)Serve with noodles or over rice."],
        ingredients: [
                      "2 tablespoons vegetable oil divided",
                      "1 pound flank steak thinly sliced",
                      "2 tablespoons cornstarch",
                      "4 cups mixed vegetables",
                      "SAUCE",
                      "3 cloves garlic minced",
                      "1 teaspoon minced ginger",
                      "⅓ cup orange juice",
                      "⅓ cup water",
                      "¼ cup low sodium soy sauce",
                      "3 tablespoons brown sugar",
                      "1 ½ teaspoons sesame oil",
                      "1 tablespoon cornstarch"])
        ]
