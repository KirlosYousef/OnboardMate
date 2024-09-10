//
//  ScreenView.swift
//  Onboarding
//
//  Created by Kirlos Yousef on 09/09/2024.
//

import SwiftUI

struct ScreenView: View {
    var data: OnboardScreen
    
    var body: some View {
        VStack {
            TopImages(bgImage: data.backgroundImage,
                      objectImage: data.objectImage)
            
            TextLabels(primaryText: data.primaryText,
                       descriptionText: data.descriptionText,
                       calloutText: data.calloutText)
            
            Spacer()
            
            if let didTapAction = data.didTapAction {
                ActionButton(actionButtonTitle: data.buttonTitle,
                             actionButtonColor: data.buttonColor,
                             didTapActionButton: didTapAction)
            }
            
            Spacer()
        }
    }
}
