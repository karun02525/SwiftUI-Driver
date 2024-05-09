//
//  LoginScreen.swift
//  NemoDriver
//
//  Created by Karun Kumar on 03/05/24.
//

import SwiftUI

struct LoginScreen: View {
    @State private var mobile:String=""
    @State var showingAlert:Bool = false
    @State var count=0
    var body: some View {
            ZStack{
                
                VStack{
                    Image("Login_banner")
                        .resizable()
                        .frame(width: nil,height:300)
                    
                    Spacer()
                    
                    VStack{
                        Text("Hello User..!")
                            .font(.custom("Georama-Regular", size: 25))
                            .foregroundColor(.black.opacity(0.87))
                            .opacity(40)
                            .padding()
                        
                        
                        Text("Sign In to experience a sustainable transportation from NEMO..!")
                            .font(.custom("Georama-Regular", size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(hex: 0x4D4D4F).opacity(0.87))
                        
                        Spacer()
                        
                        TextField(
                            "Enter your mobile number",
                            text: self.$mobile.max(10)
                        )
                        .padding(15)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.blue, lineWidth: 2)
                            }
                    
                        
                        Spacer()
                        NavigationLink {
                            AccountDetailsScreen()
                                .navigationBarBackButtonHidden()
                        } label:{
                            ButtonView(title: "GET OTP")
                        }
                        
                        Spacer()
                        
                    }.padding(.horizontal,24)
                
                }.alert(isPresented: $showingAlert){
                    Alert(title: Text("Are you sure?"),
                          message: Text("Are you sure you want to cancel registration. If you cancel the registration you will be not able to proceed with NEMO features")
                          ,primaryButton: .destructive(Text("Add One")){
                        
                        self.count += 1
                        
                    },secondaryButton: .cancel(){
                        print("Cancel action")
                    })
                }
            }.edgesIgnoringSafeArea(.top)
        
    }
}

#Preview {
    LoginScreen()
}


extension Binding where Value == String {
    func max(_ limit: Int) -> Self {
        if self.wrappedValue.count > limit {
            DispatchQueue.main.async {
                self.wrappedValue = String(self.wrappedValue.prefix(limit))
            }
        }
        return self
    }
}
