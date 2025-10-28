//
//  ContentView.swift
//  AnimatedProgressBar
//
//  Created by Douglas Jasper on 2025-10-28.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: Double = 0.0
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Animated Progress Bar")
                .font(.title2.bold())
            
            // Use gradientColors instead of barColor
            ProgressBar(progress: progress, barHeight: 25, gradientColors: [.green, .mint])
                .frame(height: 25)
                .padding(.horizontal)
            
            HStack(spacing: 20) {
                Button("Reset") {
                    withAnimation {
                        progress = 0.0
                    }
                }
                .buttonStyle(.borderedProminent)
                
                Button("Increase") {
                    withAnimation {
                        progress = min(progress + 0.1, 1.0)
                    }
                }
                .buttonStyle(.borderedProminent)
                
                Button("Random") {
                    withAnimation {
                        progress = Double.random(in: 0...1)
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
