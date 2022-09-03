//
//  Recipe.swift
//  mvvm-demo
//
//  Created by Elvis Masiya on 2022/09/01.
//

import Foundation

class Recipe:Identifiable,Decodable{
    var id:UUID?
    var name = ""
    var cuisine = ""
    
    init( _ name:String, _ cuisine:String){
        self.name = name
        self.cuisine = cuisine
        self.id = UUID()
        
    }
}
