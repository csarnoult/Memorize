//
//  ContentView.swift
//  Memorize
//
//  Created by Chris on 6/14/20.
//  Copyright © 2020 Chris Arnoult. All rights reserved.
//

import SwiftUI

// This is functional programming. This ConentView "behaves" or "functions" like a View. Not "is a" view. That's OOP.
struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { i in
                CardView(isFaceUp: true)
            }
        }
            .foregroundColor(Color.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
