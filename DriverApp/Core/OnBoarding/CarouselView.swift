//
//  CarouselView.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct CarouselView: View {
    public let timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @Binding var selection:Int
    
    let images = ["walkthrough-1","walkthrough-2","walkthrough-3"]
    var body: some View {
            TabView(selection:$selection){
                ForEach(0..<3){i in
                    Image("\(images[i])")
                        .resizable()
                }
            }
            .frame(width: 330,height: 213)
            .tabViewStyle(PageTabViewStyle())
            .onReceive(timer, perform: { _ in
                    withAnimation{
                        selection = selection < 3 ? selection + 1 : 0
                    }
            })
        
    }
}

#Preview {
    CarouselView(selection: .constant(0))
}
