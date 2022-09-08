//
//  ContentView.swift
//  GeometryReaderDemo
//
//  Created by Elvis Masiya on 2022/09/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader{ geo in
            Rectangle()
                .frame(width: geo.size.width/4, height:geo.size.height/8)
                .onTapGesture {
                    print("global x: \(geo.frame(in: .global).minX),y :\(geo.frame(in: .global).minY)")
                    print("local x: \(geo.frame(in: .local).minX),y :\(geo.frame(in: .local).minY)")
                }
        }.position(x: 400, y:800).offset(x:30 ,y: 30)
       
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
