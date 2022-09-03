//
//  ContentView.swift
//  mvvm-demo
//
//  Created by Elvis Masiya on 2022/08/31.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    //  @ObservedObject declares that the View is listening for ViewModel changes on that instance
    
    var body: some View {
        VStack {
            List(model.recipes){ recipe in
                HStack(alignment: .center){
                    Text(recipe.name)
                    Text(recipe.cuisine)
                    
                }
            }
            
            Button {
               model.addRecipe()
            } label: {
                Text("Add Recipe")
            }


        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
