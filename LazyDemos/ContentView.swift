 //
//  ContentView.swift
//  LazyDemos
//
//  Created by Robert Beachill on 21/03/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var columns = [
        GridItem(.fixed(110)),
        GridItem(.fixed(150)),
        GridItem(.fixed(110))
    ]
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: columns) {
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


