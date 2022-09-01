//
//  RecipeModel.swift
//  mvvm-demo
//
//  Created by Elvis Masiya on 2022/09/01.
//

import Foundation

//View Models are Created as Classes... as they can be refernced by mutiple Views



 //ObservableObject allows the ViewModel to be Observable or can be listened to by the View
class RecipeModel: ObservableObject{
    
 // @Published Declares that any changes to that data varibles are publised to be observed by the View
    @Published var recipes = [Recipe]()
    
    
    
    
    init(){
        
        //Create some dummy recipe data
        var recipe = Recipe()
        recipe.name = "Spaghetti"
        recipe.cuisine = "Italian"
        
        //Or
        
        let recipee = Recipe(name: "Spaghetti", cuisine: "Italian")
        recipes.append(recipee)
        
        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
    
    
    func addRecipe(){
        recipes.append(Recipe(name: "Sadza", cuisine: "Zimbabwean"))
    }
}
