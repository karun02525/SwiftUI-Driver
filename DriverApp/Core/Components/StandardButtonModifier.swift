//
//  StandardButtonModifier.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct StandardButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 352, height: 44)
            .background(Color.buttonColor)
            .cornerRadius(8)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonModifier())
    }
}
