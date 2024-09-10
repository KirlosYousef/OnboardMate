//
//  TopImages.swift
//  OnboardMate
//
//  Created by Kirlos Yousef on 10/09/2024.
//

import SwiftUI

internal struct TopImages: View {
    var bgImage: Image?
    var objectImage: Image?
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                bgImage?
                    .resizable()
                    .scaledToFit()
                
                objectImage?
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width / 2.5)
                    .offset(y: geometry.size.width / 2)
                    .scaleEffect(isAnimating ? 1 : 0.9)
            }
            .padding()
            
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    self.isAnimating = true
                }
            }
            .onDisappear{
                self.isAnimating = false
            }
        }
    }
}
