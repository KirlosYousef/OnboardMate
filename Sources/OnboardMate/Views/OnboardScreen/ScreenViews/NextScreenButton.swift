//
//  NextScreenButton.swift
//  OnboardMate
//
//  Created by Kirlos Yousef on 10/09/2024.
//

import SwiftUI

internal struct NextScreenButton: View {
    var color: Color
    var didTap: () -> Void
    
    var body: some View {
        Button(action: {
            didTap()
        }, label: {
            Image(systemName: "chevron.right")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(
                    Circle()
                        .foregroundStyle(color)
                )
                .padding()
                .frame(width: 48, height: 48)
        })
    }
}
