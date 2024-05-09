//
//  OnBoardingScreen.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct OnBoardingScreen: View {
    @State private var getStart:Bool=false
    @State var selection = 0
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                CarouselView(selection:$selection)
                Spacer()
                
                Text("CONNECTIVITY")
                    .font(.custom("Georama-Medium", size: 25))
                    .opacity(84)
                    .padding()
                
                
                Text("Remotely monitor your vehicle, track live location, receive critical stats as live notifications & more")
                    .font(.custom("Georama-Regular", size: 16))
                    .opacity(0.84)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,36)
                
                Spacer()
                
                HStack(spacing: 6){
                          ForEach(0..<3) { i in
                              Image(systemName: "circle.fill")
                                  .font(.system(size: 9))
                                  .foregroundStyle(selection == i ? Color.buttonColor : .gray)
                           }
                 }
                Spacer()
                
                NavigationLink{
                    LanguageView()
                        .navigationBarBackButtonHidden()
                } label:{
                    ButtonView(title: "GET STARTED")
                        .padding(.horizontal,24)
                }
                Spacer()
            
            }
        }
    }
}


#Preview {
    OnBoardingScreen()
}
