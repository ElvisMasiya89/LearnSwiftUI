//
//  RecipeTabView.swift
//  RecipeApp
//
//  Created by Elvis Masiya on 2022/09/04.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            RecipeFeaturedView().tabItem {
                VStack{
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            }
            
            
                RecipeListView().tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
          
        }.environmentObject(RecipeModel())//Add the EnvironmentObject modifier to a parent view,for subviews to  get access to its data.
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
