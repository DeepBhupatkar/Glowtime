//
//  ContentView.swift
//  ItsGlowTimeAppleEventSwiftUI
//
//  Created by DEEP BHUPATKAR on 31/08/24.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
        GlowingView()
    }
}

#Preview {
    ContentView()
}



struct GlowingView: View {
    
    @State private var glow = false
    
    let gradient: LinearGradient = LinearGradient(
        gradient: Gradient(colors: [.blue, .purple, .orange]),
        startPoint: .leading,
        endPoint: .trailing
    )
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "apple.logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .foregroundColor(.clear)
                .overlay(gradient)
                .mask(
                    Image(systemName: "apple.logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                )
                .shadow(color: glow ? .blue.opacity(0.7) : .purple.opacity(0.7), radius: glow ? 30 : 10)
                .scaleEffect(glow ? 1.05 : 1.0)
                .animation(
                    Animation.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true)
                )
                .onAppear {
                    glow.toggle()
                }
            
                .padding()
                .padding()
            
            Text("It's Glowtime")
                .font(.system(size: 54))
                .fontWeight(.semibold)
                .foregroundColor(.clear)
                .overlay(gradient)
                .mask(Text("It's Glowtime")
                    .font(.system(size: 54))
                    .fontWeight(.semibold))
                .shadow(color: glow ? .orange.opacity(0.7) : .purple.opacity(0.7), radius: glow ? 20 : 10)
                .scaleEffect(glow ? 1.05 : 1.0)
                .animation(
                    Animation.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true)
                )
            
                .padding()
                .padding()
            
            Text("September 9, 2024")
                .font(.title)
                .fontWeight(.regular)
                .foregroundColor(.indigo)
                .shadow(color: glow ? .orange.opacity(0.7) : .purple.opacity(0.7), radius: glow ? 20 : 10)
                .scaleEffect(glow ? 1.05 : 1.0)
                .animation(
                    Animation.easeInOut(duration: 2)
                        .repeatForever(autoreverses: true)
                )

        }
        

    }
}


