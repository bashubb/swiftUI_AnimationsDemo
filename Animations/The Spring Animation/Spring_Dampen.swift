//
//  Spring_Dampen.swift
//  Animations
//
//  Created by HubertMac on 03/09/2023.
//

import SwiftUI

struct Spring_Dampen: View {
    
    @State private var show = false
    @State private var dampingFraction = 0.825 // This is default damping fraction

    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color("Dark"), Color("Darkest")]), center: .center, startRadius: 10, endRadius: 400)
                .ignoresSafeArea()
            
            VStack(spacing: 10){
                TitleText("Spring").foregroundStyle(Color("Gold"))
                SubtitleText("Dampen")
                BannerText("Spring animations hace a dampen property that dampens or make your spirng less strong or intense.", backColor: Color("Gold"))
                
                RoundedRectangle(cornerRadius: 40)
                    .foregroundStyle(Color("Gold"))
                    .overlay(Image(systemName: "phone")
                        .font(.system(size:150)))
                    .padding()
                    .scaleEffect(show ?  1 : 0.01, anchor: .bottom)
                    .opacity(show ? 1 : 0)
                    .animation(.spring(dampingFraction: dampingFraction), value: show)
                // Adjust the "springiness"
                
                Button {
                    show.toggle()
                } label: {
                    Image(systemName: show ? "person.2.fill" : "person.2")
                }
                .tint(Color("Gold"))

                HStack {
                    Image(systemName: "0.circle.fill")
                    Slider(value: $dampingFraction)
                    Image(systemName: "1.circle.fill")
                }
                .foregroundColor(Color("Gold"))
                .padding()
            }
            .font(.title)
            
            
        }
    }
}

struct Spring_Dampen_Previews: PreviewProvider {
    static var previews: some View {
        Spring_Dampen()
    }
}
