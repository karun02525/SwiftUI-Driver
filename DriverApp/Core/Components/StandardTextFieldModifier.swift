//
//  StandardTextFieldModifier.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct StandardTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color(UIColor.systemGray6))
            .cornerRadius(8)
            .foregroundColor(.primary)
            .font(.body)
    }
}

extension View {
    func standardTextFieldStyle() -> some View {
        self.modifier(StandardTextFieldModifier())
    }
}
