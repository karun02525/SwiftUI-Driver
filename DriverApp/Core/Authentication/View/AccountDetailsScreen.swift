//
//  AccountDetailsScreen.swift
//  NemoDriver
//
//  Created by Karun Kumar on 03/05/24.
//

import SwiftUI

struct AccountDetailsScreen: View {
    
    @State private var isChecked=false
    @State private var isActive = false
    var body: some View {
        ZStack{
            
            VStack{
                //Toolbar
                ZStack{
                    Button{
                        isActive=true
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .fontWeight(.thin)
                            .font(.title2)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding(.leading,25)
                    
                    Text("ACCOUNT DETAILS")
                        .font(.custom(Font.fontMedium, size: 20))
                        .fontWeight(.light)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                }
                
                //Name
                VStack(alignment:.leading,spacing: 10){
                    
                    HStack{
                        Image("kaju")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50,height: 50)
                            .clipped()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.red,lineWidth: 1))
                        
                        Text("Hello!")
                            .font(.custom(Font.fontRegular, size: 16))
                            .fontWeight(.light)
                    }
                    
                    
                    Text("Karun Kumar")
                        .foregroundColor(Color.buttonColor)
                        .font(.custom(Font.fontRegular, size: 24))
                    
                    
                    Text("We have mapped the following vehicle to your app.")
                        .multilineTextAlignment(.leading)
                        .font(.custom(Font.fontRegular, size: 16))
                        .foregroundColor(Color(hex: 0x4D4D4F))
                    
                }.padding(.vertical,30)
                Divider()
                
                HStack{
                    Image("Vehicle_mask")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 160)
                    
                    
                    VStack(alignment:.leading,spacing: 10){
                        Text("Vehicle Model")
                            .font(.custom(Font.fontRegular, size: 12))
                            .foregroundColor(Color(hex: 0x929293))
                        
                        Text("TREO ZOR")
                            .font(.custom(Font.fontRegular, size: 14))
                            .foregroundColor(Color(hex: 0x4D4D4F))
                        
                        Text("VIN")
                            .font(.custom(Font.fontRegular, size: 12))
                            .foregroundColor(Color(hex: 0x929293))
                        
                        Text("MB7D8RXBADJD10128")
                            .font(.custom(Font.fontRegular, size: 14))
                            .foregroundColor(Color(hex: 0x4D4D4F))
                        
                        
                        Text("Reg No.")
                            .font(.custom(Font.fontRegular, size: 12))
                            .foregroundColor(Color(hex: 0x929293))
                        
                        Text("KA 01 EF 0936")
                            .font(.custom(Font.fontRegular, size: 14))
                            .foregroundColor(Color(hex: 0x4D4D4F))
                    }.padding(.trailing)
                }
                .padding(.vertical)
                .padding(.horizontal)
                Divider()
                
                
                
                Spacer()
                Spacer()
                
                HStack(alignment:.center){
                    
                    Image(systemName: isChecked ?"checkmark.square" : "square")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .onTapGesture { isChecked.toggle() }
                    
                    
                    Text("I have read and agree to Terms of Service and Privacy Policy")
                        .font(.custom("Georama-Light", size: 14))
                        .padding(.top, 7)
                    
                }.padding()
                
                
                NavigationLink {
                    // AccountDetailsScreen()
                    // .navigationBarBackButtonHidden()
                } label:{
                    ButtonView(title: "FINISH REGISTRATION")
                }.padding(.horizontal,24)
                
                Spacer()
            }
            
            if isActive {
                CustomDialog(isActive: $isActive,
                             title: "Please note",
                             message: "Are you sure you want to cancel registration. If you cancel the registration you will be not able to proceed with NEMO features ",
                             
                yes:{
                    isActive = false
                },
                  no:{
                    isActive = false
                })
            }
        }
        
    }
}

#Preview {
    AccountDetailsScreen()
}


