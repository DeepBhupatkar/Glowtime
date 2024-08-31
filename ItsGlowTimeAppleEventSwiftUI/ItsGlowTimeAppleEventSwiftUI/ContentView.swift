//
//  ContentView.swift
//  ItsGlowTimeAppleEventSwiftUI
//
//  Created by DEEP BHUPATKAR on 31/08/24.
//

import SwiftUI
import CommonSwiftUI

struct ContentView: View {
    
    let
gradient: LinearGradient = .linearGradient(.init(colors:
                                                    [.blue, .purple, .orange]), startPoint:.leading, endPoint: .trailing)
    
    var body: some View {
        VStack {
            Image(systemName: "apple.logo")
              
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .glow(gradient: gradient, intensity: 5)
           
            
            Text ("It's Glowtime" )
                .font(system(size: 54))
                .fontWeight(.semibold)
                .glow (gradient: gradient, intensity: 5)
            
            Text ("September 9, 2024")
        }
     
    }
}

#Preview {
    ContentView()
}
