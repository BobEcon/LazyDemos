 //
//  ContentView.swift
//  LazyDemos
//
//  Created by Robert Beachill on 21/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(0..<1000) { i in
                    let _ = print("Dang \(i)")
                    RedAndCyanView()
                }
            }
                
            
        }
        .padding()
    }
}

struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ContentView()
}


