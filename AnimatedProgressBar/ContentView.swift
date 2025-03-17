//
//  ContentView.swift
//  AnimatedProgressBar
//
//  Created by Douglas Jasper on 2025-03-17.
//

import SwiftUI

struct ContentView: View {
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Animated Circular Progress Bar")
                .font(.custom("GreatVibes-Regular", size: 24))
                .italic()
                .bold()
            
            ProgressBarView(progress: progress)
                
            Button(action: {
                progress = progress < 1.0 ? 1.0 : 0.0 // Toggle animation
            }) {
                Text("Start Animation")
                    .font(.custom("GreatVibes-Regular", size: 18))
                    .italic()
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
