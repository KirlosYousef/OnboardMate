//
//  OnboardScreenView.swift
//  Onboarding
//
//  Created by Kirlos Yousef on 09/09/2024.
//

import SwiftUI

struct OnboardScreenView: View {
    var data: OnboardScreen
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                TopImages(bgImage: data.backgroundImage,
                          objectImage: data.objectImage)
                
                Spacer()
                
                VStack {
                    TextLabels(primaryText: data.primaryText,
                               descriptionText: data.descriptionText,
                               calloutText: data.calloutText)
                    
                    Spacer()
                    
                    if let didTapAction = data.didTapAction {
                        ActionButton(actionButtonTitle: data.buttonTitle,
                                     actionButtonColor: data.buttonColor,
                                     didTapActionButton: didTapAction)
                        .padding(.bottom, 24)
                    }
                    
                    Spacer()
                }
                .frame(height: geometry.size.height / 2.5)
            }
        }
    }
}
