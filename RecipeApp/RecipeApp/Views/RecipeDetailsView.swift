//
//  RecipeDetailsView.swift
//  RecipeApp
//
//  Created by Elvis Masiya on 2022/09/03.
//

import SwiftUI

struct RecipeDetailsView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        //MARK: Recipe Image
        ScrollView{
            
            VStack(alignment: .leading){
            Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
            //MARK: Ingredients
              VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                        .accentColor(.blue)
                    
                    ForEach (recipe.ingredients){ item in
                        Text("·" + item.name)
                            .padding(.bottom, 3.0)
                    }
              }
              .padding(.horizontal)
                
            //MARK: Divider
              Divider()
                
            //MARK: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                        .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    ForEach (0..<recipe.directions.count, id: \.self){ index in
                        Text(String(index + 1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5.0)
                    }
                }
                .padding(.horizontal)
                
            }
        }.navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailsView(recipe: model.recipes[0])
    }
}
