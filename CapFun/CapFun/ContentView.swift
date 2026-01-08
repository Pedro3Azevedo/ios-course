//
//  ContentView.swift
//  CapFun
//
//  Created by pedro azevedo on 08/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State var userText: String = ""
    @State var capMode = 1
    
    var body: some View {
        VStack{
            Spacer()
            if capMode == 1{
                Text(userText.uppercased())
                    .font(Font.largeTitle)
                    .padding()
            }
            else if capMode == 2{
                Text(userText.capitalized)
                    .font(Font.largeTitle)
                    .padding()
            }
            else if capMode == 3{
                Text(userText.lowercased())
                    .font(Font.largeTitle)
                    .padding()
            }
            
            Spacer()
            HStack{
                Button(action: {
                    capMode = 1
                }){
                    CustomButtonView(title: "ALL CAPS", color: .blue)
                }
                Button(action: {
                    capMode = 2
                }){
                    CustomButtonView(title: "Fisrt Letter", color: .green)
                }
                
                Button(action: {
                    capMode = 3
                }){
                    CustomButtonView(title: "lowercase", color: .red)
                }
            }
            .padding([.horizontal], 20)
            Button(action: {
                UIPasteboard.general.string = userText
            } ){
                CustomButtonView(title: "Copy", color: .orange)
                    .padding([.horizontal], 20)
            }
            TextField("Enter Text here:", text: $userText)
                .padding([.horizontal], 20)
        }
    }
}

#Preview {
    ContentView()
}
