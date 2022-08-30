//
//  ContentView.swift
//  ListDemo
//
//  Created by Elvis Masiya on 2022/08/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let array = ["Element 1","Element 2","Element 3" ,"Element 4","Element 5" ]
        
//        List{
//            Text(array[0])
//            Text(array[1])
//            Text(array[2])
//        }
        
        // \.self id means the id is the elements t self as they all unique elemets in the array
        // 'in' key word means the variable/s is goin to be used in the following context
        
        //The the Navigation Bar Title is set on the First View or Element in NavigationView in the case The List using the function navigationBarTitle(Text("My List")
        
        
        NavigationView{
            
            List( array, id:\.self ){ arrayElement in
            NavigationLink {
                Text("Destination")// To
            } label: {
                Text(arrayElement) //From
            }
            }.navigationBarTitle(Text("My List"))
            
        }
        
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
