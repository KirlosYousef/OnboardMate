//
//  TextLabels.swift
//  OnboardMate
//
//  Created by Kirlos Yousef on 10/09/2024.
//

import SwiftUI

internal struct TextLabels: View {
    var primaryText: String?
    var descriptionText: String?
    var calloutText: String?
    
    var body: some View {
        VStack {
            if let primaryText {
                Text(primaryText)
                    .font(.title2)
                    .bold()
                    .foregroundStyle(Color(.label))
            }
            
            Spacer()
            
            if let descriptionText {
                Text(descriptionText)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(.label))
                    .padding()
            }
            
            Spacer()
            
            if let calloutText {
                
                Text(calloutText)
                    .font(.headline)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(.label))
                    .padding()
            }
            
            Spacer()
        }
    }
}
