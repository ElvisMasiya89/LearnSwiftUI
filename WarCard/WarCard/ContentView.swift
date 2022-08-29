//
//  ContentView.swift
//  WarCard
//
//  Created by Elvis Masiya on 2022/08/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                
                Spacer()
                Image("dealbutton")
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack(alignment: .center, spacing: 10.0) {
                        Text("Player").font(.headline).foregroundColor(Color.white)
                        Text("0").font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(alignment: .center, spacing: 10.0) {
                        Text("CPU").font(.headline).foregroundColor(Color.white)
                        Text("0").font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
