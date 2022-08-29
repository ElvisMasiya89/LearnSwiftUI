//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by Elvis Masiya on 2022/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 20.0) {
                Spacer()
                Text("Elvis")
                Spacer()
                Text("Masiya")
                Spacer()
            }
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
