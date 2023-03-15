//
//  ContentView.swift
//  Card Creator
//
//  Created by Dino0Z on 2023-03-15.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    @State private var writtenText = "You went to "
    @State private var writtenDestination = ""
    
    var body: some View {
        VStack {
            Button() {
                showDetails.toggle()
            } label: {
                Text("Go home")
                Image(systemName: "house")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            .buttonStyle(.bordered)
            Button() {
                showDetails.toggle()
               let writtenDestination = "Space"
            } label: {
                Text("Go to space")
                Image(systemName: "aqi.medium")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            .buttonStyle(.bordered)
            VStack {
                Text("")
                if showDetails {
                    Text(writtenText + writtenDestination + "Congratz")
                }
                else {
                    Text("").scaledToFit()
                    }
                
            }
    
         
//            Image(systemName: "camera")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
