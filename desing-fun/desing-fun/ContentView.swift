//
//  ContentView.swift
//  desing-fun
//
//  Created by pedro azevedo on 07/01/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    
    var body: some View {
        VStack{
            HStack{
                Button("Tap me")
                    {
                    count += 1
                }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .padding()
                Button("Remove"){
                    count -= 1
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .padding()
            }
            Text("People tapped: \(count)")
                .padding(20)
        }
    }
}

#Preview {
    ContentView()
}
