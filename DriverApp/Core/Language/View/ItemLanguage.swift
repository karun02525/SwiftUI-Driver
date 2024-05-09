//
//  ItemLanguage.swift
//  NemoDriver
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct ItemLanguage: View {
    let language:Language
    var isSelected:Bool
    var body: some View {
        Text(language.name)
            .foregroundColor(isSelected ? Color.buttonColor : .gray)
            .frame(width: 144, height: 80)
            .overlay{
                RoundedRectangle(cornerRadius: 8).stroke(isSelected ? Color.buttonColor : .gray ,lineWidth: 1)
            }
    }
}
