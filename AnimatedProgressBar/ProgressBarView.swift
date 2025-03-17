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
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 20)
                    .foregroundColor(Color.gray.opacity(0.3))
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: geometry.size.width * progress, height: 20)
                    .foregroundColor(.blue)
                    .animation(.easeInOut(duration: 1.5), value: progress)
            }
        }
        .frame(height: 20)
    }
}

#Preview {
    ProgressBarView(progress: 0.3)
}
