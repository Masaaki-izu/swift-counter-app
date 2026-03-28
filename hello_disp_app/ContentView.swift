//
//  ContentView.swift
//  hello_disp_app
//
//  Created by イズミ　マサアキ on 2026/03/28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 20) {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.blue)
                .font(.system(size: 40))
            Text("Hello, world!")
                .font(.title)
            
            Text("カウント: \(count)")
                .font(.title2)
                .foregroundColor(count % 2 == 0 ? .green : .blue)
                .scaleEffect(1.2)
                .animation(.easeInOut(duration: 0.2), value: count)
           
            if count >= 20 {
                Text("すごい！")
                    .font(.headline)
                    .foregroundColor(.purple)
            } else if count >= 10 {
                Text("いい感じ！")
                    .font(.headline)
                    .foregroundColor(.red)
            }
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    count += 1
                }
            }) {
                
                Text("押してね")
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 150)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                
            }
        }
        HStack {
            Button("-") {
                withAnimation {
                    if count > 0 {
                        count -= 1
                    }
                }
            }
            Button("+") {
                withAnimation {
                    count += 1
                }
            }
            Button("リセット") {
                withAnimation {
                    count = 0
                }
            }
        }
        .padding()
    }
}
