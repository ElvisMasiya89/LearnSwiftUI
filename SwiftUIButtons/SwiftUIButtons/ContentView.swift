//
//  ContentView.swift
//  SwiftUIButtons
//
//  Created by Elvis Masiya on 2022/08/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            
            //Button instance with closure
            Button("Click Me", action: {
                print("Hello World")
            })
            
            //Button instance with trailing closure
            Button("Click Me"){
                print("Hello World")
            }
            
            //Button instance with label view
            Button(
                action:{
                    print("Hello World")
                    
                },
                
                label: {
                    HStack{
                        Image(systemName: "pencil")
                        Text("Edit")
                    }
            })
            
            //Button instance with label view
            Button {
                print("Hello World")
            } label: {
                HStack{
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            }

            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
