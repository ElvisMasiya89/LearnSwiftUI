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
    
}
