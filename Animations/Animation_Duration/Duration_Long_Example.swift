//
//  Duration_Long_Example.swift
//  Animations
//
//  Created by HubertMac on 16/08/2023.
//

import SwiftUI

struct Duration_Long_Example: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack {
            Image(systemName: "cloud.sun.fill")
                .font(.system(size:200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? 240 : -240, y: 20)
                .animation(.linear(duration: 15), value: change) // 15 seconds
            
            Image(systemName: "cloud.fill")
                .font(.system(size:200))
                .foregroundColor(.purple)
                .opacity(0.3)
                .offset(x: change ? -240 : 240, y: 200)
                .animation(.linear(duration: 10), value: change) // 10 seconds

            
            VStack{
                HeaderView("Animation Operations", subtitle: "Long Duration Example", desc: "Sometimes you want a very long duration to create subtle efects on your UI", back: .purple, textColor: .white)
                Spacer()
                Button("Change") {
                    change.toggle()
                }
            }
            .font(.title)
            
            
        }
    }
}

struct Duration_Long_Example_Previews: PreviewProvider {
    static var previews: some View {
        Duration_Long_Example()
    }
}
