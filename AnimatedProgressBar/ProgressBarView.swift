//
//  ProgressBarView.swift
//  AnimatedProgressBar
//
//  Created by Douglas Jasper on 2025-03-17.
//

import SwiftUI

struct ProgressBarView: View {
    var progress: CGFloat // Value between 0.0 and 1.0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Background Circle (gray)
                Circle()
                    .stroke(Color.gray.opacity(0.3), lineWidth: 10)
                
                // Foreground Circle (progress)
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.blue, lineWidth: 10)
                    .rotationEffect(.degrees(-90)) // To start the progress from the top
                    .animation(.easeInOut(duration: 1.5), value: progress)
            }
            .frame(width: geometry.size.width, height: geometry.size.width) // Make it a perfect circle
        }
        .frame(width: 100, height: 100) // Set the size for the circular progress bar
    }
}

#Preview {
    ProgressBarView(progress: 0.3)
}
