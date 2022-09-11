//
//  RecipeHighLights.swift
//  RecipeApp
//
//  Created by Elvis Masiya on 2022/09/11.
//

import SwiftUI

struct RecipeHighLights: View {
    
    var allHighlights = ""
    
    init(highlights:[String]){
        
        //Loop through the highlights and build a String
        for index in 0..<highlights.count{
            
            //if this is last item , don't add a comma
            if index == highlights.count - 1{
                allHighlights += highlights[index]
                
            }else{
                allHighlights += highlights[index] + ", "
            }
        }
        
    }
    
    var body: some View {
        Text(allHighlights).font(Font.custom("Avenir", size: 15))
    }
}

struct RecipeHighLights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighLights(highlights: ["test1", "test1"])
    }
}
