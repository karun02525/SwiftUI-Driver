//
//  HomeScreen.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            
            HStack{
                Image("icon_hamburger")
                    .resizable()
                    .frame(width: 19, height: 16)
                
                Image("Nemo_Driver_Logo")
                    .resizable()
                    .frame(width: 74, height: 30)
                    .padding(.leading,30)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .center)
                
                 Circle()
                    .fill(.red)
                    .frame(width: 25, height: 25)
                    .overlay{
                        Image("icon_sos")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 14, height: 14)
                    }
                    .padding(.trailing,4)
                
                Image("icon_notification")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 16, height: 19)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                
            }
            Spacer()
        }.padding(.horizontal,16)
            .padding(.top,60)
            .ignoresSafeArea()
    }
}

#Preview {
    HomeScreen()
}
