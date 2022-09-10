//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Elvis Masiya on 2022/09/03.
//

import Foundation

class RecipeModel: ObservableObject{
    
    @Published var recipes = [Recipe]()
    
    init(){
        // Get the data
        self.recipes = DataService.getLocalData()
    }
    
    static func getPortion(ingredient:Ingredient, recipeServings:Int, targetServings:Int)->String{
        
        var portion = ""
        var numerator = ingredient.num ?? 1 // if value is nil default to 1
        var denominator = ingredient.denom ?? 1
        var wholePortions = 0
        
        if ingredient.num != nil{
            
            // Get a single serving size by multiplying denominator by the recipe servings
            denominator *= recipeServings
            
            // Get target portion by multiplying numerator by target servings
            numerator *= targetServings
            
            // Reduce fraction by greatest common divisor
            let divisor = Rational.greatestCommonDivisor(numerator, denominator)
            
            numerator /= divisor
            denominator /= divisor
            
            // Get the whole portion if numerator > denominator
            if numerator >= denominator{
                //Calculated the whole portions
                wholePortions = numerator/denominator
                
                //Calculated the remainder
                numerator = numerator % denominator
                
                //Assign to portion String
                portion += String(wholePortions)
                
            }
            
            // Express the remainder as a fraction}
            if numerator > 0{
                //Assign the remaider as fractiom to the portion string
                portion += wholePortions > 0 ? " " : ""
                portion += "\(numerator)/\(denominator)"
            }
        }
        
        if var unit = ingredient.unit{
            //if we need to pluralize
            if wholePortions > 1{
                //Calculate appropriate suffix
                if unit.suffix(2) == "ch"{
                    unit += "es"
                }else if( unit.suffix(1) == "f"){
                    
                    unit = String(unit.dropLast())
                    unit += "ves"
                } else{
                    unit += "s"
                }
            }
            
            portion += ingredient.num == nil && ingredient.denom == nil ? "": " "
            return portion + unit
        }
        return String(portion)
    }
}
