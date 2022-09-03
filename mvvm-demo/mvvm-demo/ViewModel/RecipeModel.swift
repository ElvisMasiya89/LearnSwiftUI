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
    
    
    
    
//    init(){
//
//        //Create some dummy recipe data
//        var recipe = Recipe()
//        recipe.name = "Spaghetti"
//        recipe.cuisine = "Italian"
//
//        //Or
//
//        let recipee = Recipe(name: "Spaghetti", cuisine: "Italian")
//        recipes.append(recipee)
//
//        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
//    }
    
    
    init(){
        //Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString{
            //Create a url path
            let url = URL(fileURLWithPath: path)
            
            //Error handling
            do {
                //Put the code that potentially throws an error
                let data = try Data(contentsOf: url)
                
                //Parse the data
                let decoder = JSONDecoder()
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                //Set unique IDs for each instance
                for  recipe in recipeData{
                    
                    //Set a unique IDs for each recipe in the recipeData array
                    recipe.id = UUID()
                }
                self.recipes = recipeData
                
            }catch{
                //Execution will come if the error is thrown
                //Handle the error
                print(error)
            }
        }
        
    }

    
    func addRecipe(){
        recipes.append(Recipe("Sadza",  "Zimbabwean"))

    }
}
