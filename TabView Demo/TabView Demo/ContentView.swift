//
//  ContentView.swift
//  TabView Demo
//
//  Created by Elvis Masiya on 2022/09/04.
//

import SwiftUI

struct ContentView: View {
    
    //Binding allows state variables to be read by the Views when it changes state and the View to write to State varible when UI data is generated Eg changing from one tab to another.
    @State var tabIndex = 2
    
    var body: some View {
        
        TabView(selection: $tabIndex){
            Text("Hello, world! on Tab 1")
                .tabItem{
                    VStack {
                        Image(systemName: "pencil")
                        Text("tab 1")
                    }
                }.tag(1)
            
            VStack{
                Text("This is a tab 2")
                Text("This is more Text")
            }.tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("tab 2")
                }
            }.tag(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
