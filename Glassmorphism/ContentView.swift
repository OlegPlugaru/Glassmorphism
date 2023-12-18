//
//  ContentView.swift
//  Glassmorphism
//
//  Created by Oleg Plugaru on 18.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.mint, Color.white]), startPoint: .top, endPoint: .bottom)
            
            LinearGradient(gradient:Gradient(colors: [Color.mint.opacity(0.6), Color.purple.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            ZStack {
                Circle()
                    .frame(width: 400, height: 400)
                    .offset(x: 150, y: -150)
                    .foregroundColor(.purple.opacity(0.5))
                    .blur(radius: 8)
                
                Circle()
                    .frame(width: 300, height: 300)
                    .offset(x: -50, y: -125)
                    .foregroundColor(.blue.opacity(0.5))
                    .blur(radius: 8)
                PopupView()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}

struct PopupView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white.opacity(0.4)
                .frame(width: 300, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 10)
                .blur(radius: 1)
            VStack(alignment: .leading, spacing: 16) {
                Text("Glassmorphism")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                
                Text("Just Experimenting".uppercased())
                    .font(.caption)
                
                Text("This could be a body text...")
                    .font(.footnote)
            }
            .padding()
            .frame(width: 300, height: 400)
            .foregroundColor(.black.opacity(0.8))
        }
    }
}
