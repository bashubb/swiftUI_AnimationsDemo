//
//  Challenge_5.swift
//  Animations
//
//  Created by HubertMac on 19/07/2023.
//

import SwiftUI

struct Challenge_5: View {
    
    @State var isMenuShowing :Bool = false
    
    var body: some View {
        VStack(spacing:10) {
            Text("Challenge")
                .font(.largeTitle)
            Text("Show a Menu")
                .font(.title)
                .foregroundColor(.gray)
            
            Button("Open Menu") {
                isMenuShowing.toggle()
            }
            
            Spacer()
            
            Rectangle()
                .foregroundColor(.blue)
                .frame(height: 200)
                .cornerRadius(10)
                .padding()
                .overlay(
                    VStack(spacing:10){
                        Image(systemName: "line.3.horizontal")
                        Text("My Menu!")
                        Spacer()
                    }
                        .padding(40)
                        .foregroundColor(.white)
                        
                )
                .scaleEffect(isMenuShowing ? 1 : 0.05, anchor: .bottom)
                .offset(x: 0, y: isMenuShowing ? 0 : 500)
                .animation(.default, value: isMenuShowing)
            
        }
    }
}

struct Challenge_5_Previews: PreviewProvider {
    static var previews: some View {
        Challenge_5()
    }
}
