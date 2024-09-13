//
//  ActionButton.swift
//  OnboardMate
//
//  Created by Kirlos Yousef on 10/09/2024.
//

import SwiftUI

internal struct ActionButton: View {
    var actionButtonTitle: String
    var actionButtonColor: Color
    var didTapActionButton: () -> Void
    
    var body: some View {
        Button(action: {
            didTapActionButton()
        }, label: {
            Text(actionButtonTitle)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(actionButtonColor)
                )
                .padding()
                .frame(height: 48)
        })
    }
}
