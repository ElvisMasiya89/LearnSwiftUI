//
//  ContentView.swift
//  RecipeApp
//
//  Created by Elvis Masiya on 2022/09/03.
//

import SwiftUI

struct RecipeListView: View {
    
//    //Reference the View Model
//    @ObservedObject var model = RecipeModel()
    
    @EnvironmentObject var model:RecipeModel

    var body: some View {
        NavigationView {
            List(model.recipes){ recipe in
                
                NavigationLink {
                    RecipeDetailsView(recipe: recipe)
                } label: {
                    HStack(alignment: .center, spacing: 20.0) {
                        Image(recipe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(recipe.name)
                    }
                }
                
            }.navigationBarTitle("All Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
