//
//  OnboardMateView.swift
//  Onboarding
//
//  Created by Kirlos Yousef on 09/09/2024.
//

import SwiftUI

public struct OnboardMateView: View {
    var screensList: [OnboardScreen]
    var nextButtonColor: Color?
    
    @State private var currentScreen = 0
    
    public init(screensList: [OnboardScreen], nextButtonColor: Color? = nil) {
        self.screensList = screensList
        self.nextButtonColor = nextButtonColor
    }
    
    public var body: some View {
        ZStack(alignment: .bottomTrailing){
            TabView(selection: $currentScreen){
                ForEach(screensList) { screen in
                    OnboardScreenView(data: screen)
                        .tag(screen.id)
                        .padding(.bottom, 16)
                }
            }
            
            if let nextButtonColor,
               screensList[currentScreen].didTapAction == nil {
                NextScreenButton(color: nextButtonColor, didTap: {
                    currentScreen += 1
                })
                .padding(.trailing, 24)
                .padding(.bottom, 14)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .foregroundStyle(Color(.systemBackground))
        .animation(.easeInOut, value: currentScreen)
        .transition(.slide)
    }
}
