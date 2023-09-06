//
//  Spring_Options_Repeating.swift
//  Animations
//
//  Created by HubertMac on 06/09/2023.
//

import SwiftUI

struct Spring_Options_Repeating: View {
    
    @State private var start = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing:10) {
                TitleText("Spring Options")
                    .foregroundStyle(Color("Gold"))
                SubtitleText("Repeat")
                BannerText("Here are different options for repeating spring animations.", backColor: Color("Gold"))
                
                Button("Start") {
                    start.toggle()
                }
                .foregroundStyle(Color.white)
                
                Group {
                    Text("Using dampingFraction = 0")
                    Text("(spring animation)")
                        .font(.callout)
                        .foregroundStyle(Color.white)
                    Circle()
                        .frame(height: 70)
                        .offset(x: start ? 50 : -50)
                        .animation(.spring(response: 1, dampingFraction: 0), value: start)
                    
                    Text("Using dampingFraction = 0")
                    Text("(interpolatingSpring animation)")
                        .font(.callout)
                        .foregroundStyle(Color.white)
                    Circle()
                        .frame(height: 70)
                        .offset(x: start ? 50 : -50)
                        .animation(.interpolatingSpring(stiffness: 40, damping: 0), value: start)
                    
                    Text("Repeat 3 times")
                    Circle()
                        .frame(height: 70)
                        .offset(x: start ? 50 : -50)
                        .animation(.spring(response: 1, dampingFraction: 0.5).repeatCount(3), value: start)
                    
                    Text("Repeat forever")
                    Circle()
                        .frame(height: 70)
                        .offset(x: start ? 50 : -50)
                        .animation(.spring(response: 1, dampingFraction: 0.5).repeatForever(), value: start)
                        
                }
                .foregroundStyle(Color("Gold"))
            }
            .font(.title)
        }
    }
}

struct Spring_Options_Repeating_Previews: PreviewProvider {
    static var previews: some View {
        Spring_Options_Repeating()
    }
}
