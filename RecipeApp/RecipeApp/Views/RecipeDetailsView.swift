//
//  RecipeDetailsView.swift
//  RecipeApp
//
//  Created by Elvis Masiya on 2022/09/03.
//

import SwiftUI

struct RecipeDetailsView: View {
    
    var recipe:Recipe
    @State var selectedServingSize = 2
    
    var body: some View {
        
        //MARK: Recipe Image
        ScrollView{
            VStack(alignment: .leading){
             //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
               //MARK: Recipe title
                Text(recipe.name)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                    .font(Font.custom("Avenir Heavy", size: 24))
                
            //MARK: Serving Size Picker
                VStack(alignment: .leading) {
                    Text("Select your Serving Size").font(Font.custom("Avenir", size: 15))
                    
                    Picker("", selection: $selectedServingSize) {
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                    }.font(Font.custom("Avenir", size: 15))
                        .pickerStyle(SegmentedPickerStyle())
                        .frame(width: 160)
                }
                .padding([.top, .leading, .bottom])
                
              
                
            //MARK: Ingredients
              VStack(alignment: .leading){
                    Text("Ingredients")
                      .font(Font.custom("Avenir Heavy", size: 16))
                        .padding(.vertical, 5.0)
                        .accentColor(.blue)
                    
                    ForEach (recipe.ingredients){ item in
                        Text("· " + RecipeModel.getPortion(ingredient: item, recipeServings: recipe.servings, targetServings: selectedServingSize) + " " + item.name.lowercased())
                            .padding(.bottom, 3.0)
                            .font(Font.custom("Avenir", size: 15))
                    }
              }
              .padding(.horizontal)
                
            //MARK: Divider
              Divider()
                
            //MARK: Directions
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .padding(.vertical, 5.0)
                        .accentColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    ForEach (0..<recipe.directions.count, id: \.self){ index in
                        Text(String(index + 1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5.0)
                            .font(Font.custom("Avenir", size: 15))
                    }
                }
                .padding(.horizontal)
                
            }
        }
    }
}

struct RecipeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailsView(recipe: model.recipes[0])
    }
}
