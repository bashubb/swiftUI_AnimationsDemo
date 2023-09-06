//
//  Spring_Options_Speed.swift
//  Animations
//
//  Created by HubertMac on 06/09/2023.
//

import SwiftUI

struct Spring_Options_Speed: View {
    
    @State private var change = false
    
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("Spring Options")
                    .foregroundStyle(Color("Gold"))
                SubtitleText("Speed")
                BannerText("Use the speed multiplier to adjust the spring animation's speed", backColor: Color("Gold"))
                
                Button("Start") {
                    change.toggle()
                }
                .foregroundStyle(Color.white)
                
                VStack {
                    Text("No speed modifier")
                    Circle()
                        .fill(Color("Gold"))
                        .frame(height: 70)
                        .offset(x: change ? 140 : -140)
                        .animation(.spring(response: 2, dampingFraction: 0.6), value: change)
                    
                    Text("2X Faster")
                    Circle()
                        .fill(Color("Gold"))
                        .frame(height: 70)
                        .offset(x: change ? 140 : -140)
                        .animation(.spring(response: 2, dampingFraction: 0.6).speed(2), value: change)
                    
                    Text("Half Slower")
                    Circle()
                        .fill(Color("Gold"))
                        .frame(height: 70)
                        .offset(x: change ? 140 : -140)
                        .animation(.spring(response: 2, dampingFraction: 0.6).speed(0.5), value: change)
                }
                .foregroundStyle(Color("Gold"))
            }
            .font(.title)
        }
    }
}

struct Spring_Options_Speed_Previews: PreviewProvider {
    static var previews: some View {
        Spring_Options_Speed()
    }
}
