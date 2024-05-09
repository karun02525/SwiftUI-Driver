//
//  ContentView.swift
//  DriverApp
//
//  Created by Karun Kumar on 09/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var tet = ""
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            TextField("Enter numbaer",text: $tet)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
