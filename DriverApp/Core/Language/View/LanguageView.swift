//
//  LanguageView.swift
//  NemoDriver
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct LanguageView: View {
    
    @StateObject var viewmodel = LanguageViewModel()
    @State private var selectedLanguage: Language = Language.MOCK_LANGAUGES[0]
    @Environment(\.dismiss) var dissmiss
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 144))
    ]
    
    var body: some View {
        VStack{
            ScrollView(showsIndicators:false){
                LazyVGrid(columns: adaptiveColumns,spacing: 20){
                    ForEach(Language.MOCK_LANGAUGES){item in
                        ItemLanguage(language: item,isSelected: item == selectedLanguage)
                            .onTapGesture {
                                selectedLanguage = item
                            }
                    }
                    
                }.padding(.vertical,20)
            }
            NavigationLink{
                LoginScreen()
                 .navigationBarBackButtonHidden()
            } label:{
                ButtonView(title: "SELECT",maxHeight: 54)
            }
            
        }.padding(.horizontal,20)
            .navigationTitle("SELECT LANGUAGE")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button{
                       dissmiss()
                    }label: {
                        Image(systemName: "xmark")
                            .font(.title3)
                            .fontWeight(.light)
                            .foregroundColor(.black)
                        
                    }.padding(.horizontal)
                }
                
            }
        
        
    }
}

#Preview {
    LanguageView()
}

