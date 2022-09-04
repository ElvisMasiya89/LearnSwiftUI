//
//  DataServices.swift
//  RecipeApp
//
//  Created by Elvis Masiya on 2022/09/03.
//

import Foundation

class DataService{
    
    static func getLocalData() -> [Recipe]{
        
        //Parse local json file
       let pathString =  Bundle.main.path(forResource: "recipes", ofType:"json")
        
        //Check if pathsString is not nil, otherwise...
        guard  pathString != nil else{
            return [Recipe]()
        }
        
        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        do{
            //Create a data Object
            let data = try Data(contentsOf: url)
            
            //Decode the data with JSON decoder
            let decoder = JSONDecoder()
            
            do{
                let recipeData = try decoder.decode([Recipe].self, from:data)
                
                //Add the nique IDs
                for recipe in recipeData{
                    recipe.id = UUID()
                }
                
                //Return the recipes
                return recipeData
                    
            }catch{
                print(error)
            }
            
            
        }catch{
            print(error)
        }
        
        return [Recipe]()
    }
}
