//
//  SplashScreen.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.4
    
    var body: some View {
        
        if isActive {
            OnBoardingScreen()
        }else{
            VStack{
                
                
                VStack{
                    Image("Nemo_Logo_Splash")
                        .resizable()
                        .scaledToFit()
                        .frame(width: nil,height: 80)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() +  2.0){
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
