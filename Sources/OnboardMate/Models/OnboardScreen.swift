//
//  OnboardScreen.swift
//  OnboardMate
//
//  Created by Kirlos Yousef on 09/09/2024.
//

import SwiftUI

public struct OnboardScreen: Identifiable {
    public let id: Int
    public let backgroundImage: Image?
    public let objectImage: Image?
    public let primaryText: String?
    public let descriptionText: String?
    public let calloutText: String?
    public let buttonTitle: String
    public let buttonColor: Color
    public let didTapAction: (() -> Void)?
    
    public static func == (lhs: OnboardScreen, rhs: OnboardScreen) -> Bool {
        return lhs.id == rhs.id
    }
    
    public init(id: Int, backgroundImage: Image?, objectImage: Image?,
                primaryText: String? = nil, descriptionText: String? = nil, calloutText: String? = nil,
                buttonTitle: String = "Get Started!", buttonColor: Color = Color(.systemBackground),
                didTapAction: (() -> Void)? = nil) {
        self.id = id
        self.backgroundImage = backgroundImage
        self.objectImage = objectImage
        self.primaryText = primaryText
        self.descriptionText = descriptionText
        self.calloutText = calloutText
        self.buttonTitle = buttonTitle
        self.buttonColor = buttonColor
        self.didTapAction = didTapAction
    }
}
