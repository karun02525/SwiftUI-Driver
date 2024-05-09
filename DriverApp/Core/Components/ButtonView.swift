//
//  ButtonView.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct ButtonView : View {
    let title:String
    var maxHeight:CGFloat=44
    var body: some View {
        Text(title)
            .font(.custom("Georama-Medium", size: 16))
            .foregroundColor(.white)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: maxHeight)
            .background(Color.buttonColor)
            .clipShape(RoundedRectangle(cornerRadius: 24))
    }
    
}
