//
//  CustomDialog.swift
//  NemoDriver
//
//  Created by Karun Kumar on 03/05/24.
//

import SwiftUI

struct CustomDialog: View {
    
    @Binding var isActive:Bool
    let title:String
    let message:String
    let yes:()->()
    let no:()->()
    @State private var offset:CGFloat = 1000
    
    var body: some View {
        ZStack{
            
            Color(.black)
                .opacity(0.5)
                .onTapGesture {
                   // close()
                }
            
            
            VStack{
                Text(title)
                    .font(.system(size: 22,weight: .bold))
                    .padding()
                
                Text(message)
                    .font(.system(size: 20,weight: .light))
                    .multilineTextAlignment(.center)
                
                HStack(spacing:12){
                    Button{
                        no()
                        close()
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.red)
                            
                            Text("No")
                                .foregroundColor(.white)
                                .font(.system(size: 20,weight: .bold))
                                .padding()
                        }
                        .padding()
                    }
                    
                    Button{
                        yes()
                        close()
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.red)
                            
                            Text("YES")
                                .foregroundColor(.white)
                                .font(.system(size: 20,weight: .bold))
                                .padding()
                        }
                        .padding()
                    }
                }
            }
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .padding()
            .background(.white)
            .overlay{
                VStack{
                    HStack{
                        Spacer()
                        Button{
                            close()
                        }label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()
                        }
                    }
                    Spacer()
                }
            }
            .cornerRadius(20)
            .shadow(radius: 20)
            .padding(20)
            .offset(x:0,y: offset)
            .onAppear{
                withAnimation(.spring()){
                    offset = 0
                }
            }
        }
        .ignoresSafeArea()
    }
    
    func close(){
        withAnimation(.spring()){
            offset = 1000
            isActive = false
        }
    }
}

#Preview {
    CustomDialog(isActive:.constant(true),
                 title: "Please note",
                 message: "Are you sure you want to cancel registration. If you cancel the registration you will be not able to proceed with NEMO features ",  yes:{},no:{})
}
